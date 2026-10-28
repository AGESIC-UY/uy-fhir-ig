# frozen_string_literal: true

# Localiza al español los textos heredados de FHIR en las páginas de perfiles y extensiones.
#
# Las traducciones provienen de _data/profile_translations.json (catálogo por perfil, elemento y
# propiedad) y se aplican al HTML que genera Jekyll, sin modificar los recursos FHIR publicados.
# Cada sustitución identifica primero el elemento (enlace o encabezado de su sección) y solo se
# aplica si el texto presente coincide con el texto de origen del catálogo.
# Ver docs/textos-en-espanol.md.

require "cgi"
require "json"

module UYProfileLocalization
  LANGUAGES = %w[es].freeze
  PAGE = %r{\A/(?<lang>[A-Za-z-]+)/StructureDefinition-(?<id>[^/]+?)(?<definitions>-definitions|-mappings)?\.html\z}.freeze
  DICTIONARY_HEADER = '<tr><td colspan="2" class="structure">'
  DICTIONARY_LABELS = {
    "short" => "Short",
    "definition" => "Definition",
    "comment" => "Comments",
    "requirements" => "Requirements"
  }.freeze

  # En la vista de elementos clave el Publisher añade, tachado, el texto del perfil base.
  STRUCK = /<(?:span|div) style="[^"]*line-through[^"]*">/.freeze

  @applied = 0
  @pages = 0

  class << self
    attr_reader :applied, :pages

    def process(page)
      match = PAGE.match(page.url.to_s)
      return unless match && LANGUAGES.include?(match[:lang]) && page.output

      unless match[:definitions]
        filename = File.join(page.site.source, "StructureDefinition-#{match[:id]}.json")
        if File.file?(filename)
          snapshot = JSON.parse(File.read(filename, encoding: "UTF-8")).dig("snapshot", "element") || []
          page.output = complete_patterns(page.output, match[:id], snapshot)
        end
      end

      catalog = page.site.data["profile_translations"]
      entries = catalog.is_a?(Hash) ? catalog[match[:id]] : nil
      return unless entries.is_a?(Array) && !entries.empty?

      by_element = Hash.new { |hash, key| hash[key] = {} }
      entries.each { |entry| by_element[entry["element"]][entry["field"]] = entry }

      before = @applied
      markdown = page.site.find_converter_instance(Jekyll::Converters::Markdown)
      @markdown = markdown
      output = localize_tables(page.output, match[:id], by_element)
      output = localize_dictionary(output, by_element, markdown)
      page.output = output
      @pages += 1 if @applied > before
    end

    # Texto visible de un fragmento HTML, sin etiquetas ni entidades.
    def plain(html)
      entities = { "&reg;" => "®", "&copy;" => "©", "&trade;" => "™", "&nbsp;" => " ", "&ndash;" => "–", "&mdash;" => "—" }
      text = html.gsub(/<[^>]+>/, " ")
      entities.each { |entity, character| text = text.gsub(entity, character) }
      CGI.unescapeHTML(text).tr("\u00A0", " ")
    end

    # Huella que ignora formato, puntuación y destinos de enlaces Markdown: permite comparar el
    # texto de origen (Markdown) con su representación HTML o con un tooltip sin punto final.
    def signature(text)
      text.tr("\r", "\n").gsub(/^\s*\d+[.)]\s+/, "").gsub(/\(([^)]+)\)\[https?:[^\]]+\]/, '\1').gsub(/\]\([^)]*\)/, "]").gsub(/[^\p{L}\p{N}]+/, "").downcase
    end

    def same_text?(html, source)
      signature(plain(html)) == signature(source)
    end

    # --- Tablas (snapshot, diferencial, elementos clave y vistas completas) ---

    # Algunas versiones del Publisher omiten el contenido del patrón complejo y
    # dejan solo este marcador. Recuperarlo del snapshot, sin cambiar el recurso.
    def complete_patterns(html, profile_id, elements)
      marker = /<span style="color: darkgreen">(?:At least the following|Al menos el siguiente contenido)<\/span>/
      return html unless html.match?(marker)

      patterns = elements.to_h { |element| [element["id"], element["patternCodeableConcept"]] }
      link = "StructureDefinition-#{profile_id}-definitions.html#"
      html.split(/(?=<tr[\s>])/).map do |chunk|
        finish = chunk.index("</tr>") || chunk.length
        row = chunk[0...finish]
        element = row[/href="#{Regexp.escape(link)}([^"]*)"/, 1]
        pattern = element && patterns[CGI.unescapeHTML(element)]
        # Solo completar el marcador vacío al final de la celda; preservar las
        # representaciones que ya tengan contenido y los textos tachados.
        if pattern && !row.match?(STRUCK) && row.match?(/#{marker}\s*<\/td>\s*\z/)
          value = CGI.escapeHTML(JSON.generate(pattern))
          row = row.sub(marker, "<span>Al menos el siguiente contenido: </span><code>#{value}</code>")
          @applied += 1
        end
        row + chunk[finish..].to_s
      end.join
    end

    def localize_tables(html, profile_id, by_element)
      link = "StructureDefinition-#{profile_id}-definitions.html#"
      return html unless html.include?(link)

      html.split(/(?=<tr[\s>])/).map { |chunk| localize_row(chunk, link, by_element) }.join
    end

    def localize_row(chunk, link, by_element)
      # Una fila con vinculaciones adicionales contiene una tabla anidada y no cierra en este tramo.
      finish = chunk.index("</tr>") || chunk.length
      row = chunk[0...finish]
      anchor = row[/<a\s[^>]*href="#{Regexp.escape(link)}[^"]*"[^>]*>/]
      return chunk unless anchor

      element = CGI.unescapeHTML(anchor[/href="#{Regexp.escape(link)}([^"]*)"/, 1])
      fields = by_element.fetch(element, nil)
      return chunk unless fields

      row = row.sub(anchor) { localize_tooltip(anchor, fields["definition"]) } if fields["definition"]
      cell_start = row.rindex("<td")
      if cell_start
        cell = row[cell_start..]
        cell = localize_short_cell(cell, fields["short"]) if fields["short"]
        cell = localize_binding_span(cell, fields["binding.description"]) if fields["binding.description"]
        row = row[0...cell_start] + cell
      end
      row + chunk[finish..].to_s
    end

    # El tooltip del nombre muestra la definición, a veces precedida por "Slice <nombre>: ".
    def localize_tooltip(anchor, entry)
      anchor.sub(/(\stitle=")([^"]*)(")/) do
        open, title, close = Regexp.last_match.captures
        text = CGI.unescapeHTML(title)
        prefix = text[/\ASlice [^:]+: /].to_s
        if signature(text[prefix.length..]) == signature(entry["source"])
          @applied += 1
          "#{open}#{CGI.escapeHTML(prefix + entry['target'])}#{close}"
        else
          "#{open}#{title}#{close}"
        end
      end
    end

    def localize_short_cell(cell, entry)
      cut = cell.index(STRUCK) || cell.length
      original = cell[cut..]
      cell = cell[0...cut]
      done = false
      cell.gsub(/>([^<>]+)</) do
        text = Regexp.last_match(1)
        if !done && same_text?(text, entry["source"])
          done = true
          @applied += 1
          ">#{CGI.escapeHTML(entry['target'])}<"
        else
          ">#{text}<"
        end
      end + original
    end

    # Solo se sustituye la descripción; el ValueSet y la fuerza de vinculación no se tocan.
    def localize_binding_span(cell, entry)
      marker = %r{<span[^>]*class="binding"[^>]*>:\s*</span>}
      if cell.match?(marker)
        cell = cell.sub(%r{(#{marker})(.*?)(<br\b[^>]*>|<table|</td>)}m) do
          open, content, close = Regexp.last_match.captures
          if same_text?(content, entry["source"])
            @applied += 1
            translated = render(entry, content, @markdown).sub(/\A<p[^>]*>(.*)<\/p>\s*\z/m, '\1')
            "#{open}#{translated}#{close}"
          else
            "#{open}#{content}#{close}"
          end
        end
      end
      cell.gsub(%r{(<span[^>]*class="binding"[^>]*>)(.*?)(</span>)}m) do
        open, text, close = Regexp.last_match.captures
        if same_text?(text, entry["source"])
          @applied += 1
          translated = render(entry, text, @markdown).sub(/\A<p[^>]*>(.*)<\/p>\s*\z/m, '\1')
          "#{open}#{translated}#{close}"
        else
          "#{open}#{text}#{close}"
        end
      end
    end

    # --- Definiciones detalladas ---

    def localize_dictionary(html, by_element, markdown)
      return html unless html.include?(DICTIONARY_HEADER)

      html.split(/(?=#{Regexp.escape(DICTIONARY_HEADER)})/).map do |chunk|
        next chunk unless chunk.start_with?(DICTIONARY_HEADER)

        element = chunk[%r{<b>\. ([^<]+)</b>}, 1]
        fields = element && by_element.fetch(CGI.unescapeHTML(element), nil)
        next chunk unless fields

        localize_section(chunk, fields, markdown)
      end.join
    end

    def localize_section(section, fields, markdown)
      DICTIONARY_LABELS.each do |field, label|
        entry = fields[field]
        next unless entry

        pattern = %r{(<tr><td style="white-space: nowrap">#{label}</td><td>)(.*?)(</td></tr>)}m
        section = section.sub(pattern) do
          open, content, close = Regexp.last_match.captures
          cut = content.index(STRUCK) || content.length
          current = content[0...cut]
          next "#{open}#{content}#{close}" unless same_text?(current, entry["source"])

          @applied += 1
          replacement = field == "short" ? CGI.escapeHTML(entry["target"]) : render(entry, current, markdown)
          "#{open}#{replacement}#{content[cut..]}#{close}"
        end
      end

      # La descripción es el bloque final de la celda, después del ValueSet y de la fuerza.
      entry = fields["binding.description"]
      return section unless entry

      pattern = %r{(<tr><td style="white-space: nowrap"><a [^>]*>Binding</a></td><td>(?:(?!</td></tr>).)*</span><br/>)((?:(?!</span><br/>|<table|</td></tr>).)*)(<table|</td></tr>)}m
      section.sub(pattern) do
        open, content, close = Regexp.last_match.captures
        next "#{open}#{content}#{close}" unless same_text?(content, entry["source"])

        @applied += 1
        "#{open}#{render(entry, content, markdown)}#{close}"
      end
    end

    # Convierte la traducción (Markdown) conservando el estilo de párrafo y los enlaces que el
    # Publisher ya resolvió para el texto de origen.
    def render(entry, original, markdown)
      text = entry["target"].gsub(/([^\n])\n(?=(?:[*+-]|\d+\.) )/, "\\1\n\n")
      text = text.gsub(/\(([^)]+)\)\[(https?:[^\]]+)\]/, '[\1](\2)').gsub("|", "&#124;")
      html = markdown.convert(text).strip
      style = original[/<p( style="[^"]*")>/, 1]
      html = html.gsub("<p>", "<p#{style}>") if style

      raw = entry["source"].gsub(/\(([^)]+)\)\[(https?:[^\]]+)\]/, '[\1](\2)').scan(/\]\(([^)\s]+)\)/).flatten
      resolved = original.scan(/<a\s[^>]*href="([^"]*)"/).flatten
      if !raw.empty? && raw.length == resolved.length
        links = raw.zip(resolved).to_h
        html = html.gsub(/href="([^"]*)"/) { %(href="#{links.fetch(CGI.unescapeHTML(Regexp.last_match(1)), Regexp.last_match(1))}") }
      end
      html + original[%r{(?:\s|<br/>)*\z}]
    end
  end
end

Jekyll::Hooks.register :pages, :post_render do |page|
  UYProfileLocalization.process(page)
end

Jekyll::Hooks.register :site, :post_write do |_site|
  Jekyll.logger.info "UY i18n:", "#{UYProfileLocalization.applied} textos localizados en #{UYProfileLocalization.pages} páginas"
end
