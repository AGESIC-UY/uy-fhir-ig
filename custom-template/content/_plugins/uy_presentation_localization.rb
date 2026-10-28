# frozen_string_literal: true

# Localización de presentación. Protege código, fórmulas, nombres técnicos, texto
# tachado, QA y atributos estructurales. Los recursos FHIR no se modifican.
require "cgi"
require "json"
require "fileutils"

module UYPresentationLocalization
  TOKENS = /<!--[\s\S]*?-->|<(?:[^>"']|"[^"]*"|'[^']*')*>|[^<]+/m
  VOID = %w[area base br col embed hr img input link meta param source track wbr].freeze
  PROTECTED = %w[pre code samp kbd script style del s strike].freeze
  @pages = 0
  @changes = 0

  class << self
    attr_reader :pages, :changes

    def normalize(text)
      { "&reg;" => "®", "&copy;" => "©", "&trade;" => "™", "&nbsp;" => " ", "&ndash;" => "–", "&mdash;" => "—" }.each { |entity, character| text = text.gsub(entity, character) }
      CGI.unescapeHTML(text).gsub(/\s+/, " ").strip
    end

    def dictionary(site)
      @dictionary ||= begin
        entries = site.data.fetch("presentation_translations", {}).dup
        # Las traducciones FHIR ya revisadas sirven también en tooltips y mapeos.
        site.data.fetch("profile_translations", {}).each_value do |items|
          items.each do |item|
            entries[item["source"]] ||= item["target"]
            source = item["source"].gsub(/\[([^\]]+)\]\([^)]+\)/, '\1')
            target = item["target"].gsub(/\[([^\]]+)\]\([^)]+\)/, '\1')
            entries[source] ||= target
          end
        end
        entries.transform_keys { |source| normalize(source) }
      end
    end

    def prose(text, map)
      original = CGI.unescapeHTML(text.gsub("&reg;", "®").gsub("&copy;", "©").gsub("&trade;", "™").gsub("&nbsp;", " "))
      source = normalize(text)
      return text if source.empty? || source.match?(/\A(?:https?:|urn:)/)
      return text if source.match?(/\A(?:[A-Za-z]+\.)+[A-Za-z][\w\[\]:.-]*\z/)
      target = map[source]
      if target
        @changes += 1
        return CGI.escapeHTML(original.sub(source, target)) if original.include?(source)
        return CGI.escapeHTML(target)
      end
      # Frases completas o prefijos de mensajes; nunca traducción palabra por palabra.
      matching = original.gsub(/\s+/, " ")
      translated = matching.dup
      @phrases ||= Regexp.union(map.keys.select { |key| key.length >= 18 }.sort_by { |key| -key.length })
      translated = translated.gsub(@phrases) { |source| map.fetch(source) }
      patterns = [
        [/Slices for ([A-Za-z][\w\[\]:.-]*)/, 'Slices de \1'],
        [/The element (\d+) is sliced based on the value of /, 'El elemento \1 se divide en slices según el valor de '],
        [/\bMandatory: /, 'Obligatorios: '],
        [/\bFixed: /, 'Fijos: '],
        [/\bProhibited: /, 'Prohibidos: '],
        [/(\d+) nested mandatory elements?/, '\1 elementos obligatorios anidados'],
        [/(\d+) elements?/, '\1 elementos'],
        [/\bUse this DataType Profile: /, 'Utilizar este perfil de tipo de datos: '],
        [/\bDerived from this DataType Profile: /, 'Derivado de este perfil de tipo de datos: '],
        [/\bExamples for this (?:Profile|Extension): /, 'Ejemplos: '],
        [/\bSimple Extension with the type /, 'Extensión simple de tipo '],
        [/\bExtension Type: /, 'Tipo de extensión: '],
        [/\bExtension URL = /, 'URL de la extensión = '],
        [/\bExample General: /, 'Ejemplo general: '],
        [/\b(preferred|extensible|required|example) to /, '\1 para '],
        [/Slice: Unordered, Open by /, 'Slice: sin orden, abierto por '],
        [/Slice ([^:]+): /, 'Slice \1: '],
        [/This element has or is affected by constraints/, 'Este elemento tiene restricciones o está afectado por ellas'],
        [/This structure refers to these other structures:/, 'Esta estructura referencia las siguientes estructuras:'],
        [/Refer to this Profile: /, 'Referencia a este perfil: '],
        [/Use this Profile: /, 'Utilizar este perfil: '],
        [/Use this Extension: /, 'Utilizar esta extensión: '],
        [/true because /, 'true porque '],
        [/false because /, 'false porque '],
        [/Version is not explicitly stated, which means it is fixed to (.*?), the version found through the package references/, 'No se especifica la versión; corresponde a \1, encontrada mediante las referencias de paquetes'],
        [/This value set contains (\d+) concepts/, 'Este ValueSet contiene \1 conceptos'],
        [/Expansion performed internally based on codesystem (.*)/, 'Expansión realizada internamente a partir del CodeSystem \1'],
        [/There is no translation page available for the current page, so it has been rendered in the default language/, 'No hay una traducción disponible para esta página; se muestra en el idioma predeterminado.']
      ]
      patterns.each { |pattern, replacement| translated = translated.gsub(pattern, replacement) }
      return text if translated == matching
      @changes += 1
      CGI.escapeHTML(translated)
    end

    def translate(html, map)
      stack = []
      html.scan(TOKENS).map do |token|
        if token.start_with?("<!--", "<!", "<?")
          token
        elsif token.start_with?("</")
          tag = token[/\A<\/([\w:-]+)/, 1]&.downcase
          index = stack.rindex { |entry| entry[:tag] == tag }
          stack = stack[0...index] if index
          token
        elsif token.start_with?("<")
          tag = token[/\A<([\w:-]+)/, 1]&.downcase
          next token unless tag
          inherited = stack.last && stack.last[:protected]
          protected = inherited || PROTECTED.include?(tag) || token.match?(/line-through|font-family:\s*monospace|class=["'][^"']*language-/i)
          result = token
          unless protected
            result = token.gsub(/(\s(?:title|alt|aria-label|placeholder)=)(["'])(.*?)\2/m) do
              prefix, quote, value = Regexp.last_match.captures
              "#{prefix}#{quote}#{prose(value, map)}#{quote}"
            end
          end
          stack << { tag: tag, protected: protected, technical_link: tag == "a" && token.include?("href=") } unless VOID.include?(tag) || token.end_with?("/>")
          result
        else
          names = %w[Location Condition Reference Resource Identifier Organization Patient Practitioner PractitionerRole Bundle Binary Composition Medication MedicationRequest MedicationAdministration ServiceRequest Procedure Observation DiagnosticReport DocumentReference CareTeam CarePlan EpisodeOfCare Person Group Extension ContactPoint HumanName Address Dosage Signature]
          protected_name = names.include?(normalize(token))
          stack.last && stack.last[:protected] || protected_name ? token : prose(token, map)
        end
      end.join
    end

    def process(page)
      # Los assets con front matter también disparan post_render. Nunca interpretar
      # JavaScript como HTML: escaparía sus comillas e impediría cargar los datos.
      return unless page.output_ext == ".html"
      return unless page.output && (page.url.start_with?("/es/") || page.output.include?("assets/js/lang-redirects.js"))
      return if page.url.match?(/\A\/qa(?:[.-]|\.html)/)
      return if page.url.end_with?(".ai.html")
      before = @changes
      page.output = translate(page.output, dictionary(page.site))
      page.output = binding_headers(page.output)
      notice = page.site.data.dig("local_build_notice", "html")
      if notice
        page.output = page.output.gsub(/(<p\b[^>]*\bid=["']publish-box["'][^>]*>)Publish Box goes here(<\/p>)/) { "#{Regexp.last_match(1)}#{notice}#{Regexp.last_match(2)}" }
      end
      @pages += 1 if @changes > before
    end

    def binding_headers(html)
      # Path y Status se conservan en las tablas de bindings, sin cambiar los
      # rótulos de estado de metadatos ni las rutas explicadas en otras secciones.
      html.gsub(/(<h[2-6][^>]*>Bindings terminológicos(?: \(diferencial\))?<\/h[2-6]>\s*<table\b[^>]*>\s*<tr>)([\s\S]*?)(<\/tr>)/) do
        prefix, header, suffix = Regexp.last_match.captures
        "#{prefix}#{header.gsub('<b>Ruta</b>', '<b>Path</b>').gsub('<b>Estado</b>', '<b>Status</b>')}#{suffix}"
      end
    end

    def controls(site)
      reports = File.join(site.source, "_localization_reports")
      if File.directory?(reports)
        Dir.children(reports).grep(/\Aqa.*\.html\z/).each do |name|
          FileUtils.cp(File.join(reports, name), File.join(site.dest, name))
        end
      end
      # Modifica exclusivamente la configuración de etiquetas, nunca las filas de recursos.
      values = { "type" => "Tipo", "category" => "Categoría", "useGrouping" => "Agrupar", "clearAll" => "Limpiar filtros", "linkToSection" => "Enlace a esta sección" }
      ["assets/js/artifacts-table-data.js", "es/assets/js/artifacts-table-data.js"].each do |relative|
        filename = File.join(site.dest, relative)
        next unless File.file?(filename)
        javascript = File.read(filename, encoding: "UTF-8")
        javascript = javascript.sub(/("es"\s*:\s*\{\s*"labels"\s*:\s*)\{.*?\}/m) { "#{Regexp.last_match(1)}#{JSON.generate(values)}" }
        File.write(filename, javascript, encoding: "UTF-8")
      end
      # El formulario auxiliar es un archivo estático, sin front matter de Jekyll.
      ["searchform.html", "es/searchform.html"].each do |relative|
        filename = File.join(site.dest, relative)
        next unless File.file?(filename)
        File.write(filename, translate(File.read(filename, encoding: "UTF-8"), dictionary(site)), encoding: "UTF-8")
      end
    end
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  # Los informes del Publisher están fuera de la generación y localización de Jekyll.
  if File.directory?(site.dest)
    site.keep_files.concat(Dir.children(site.dest).grep(/\Aqa.*\./)).uniq!
  end
end

# Se registra después del plugin de perfiles: este necesita los rótulos originales.
Jekyll::Hooks.register :pages, :post_render, priority: :low do |page|
  UYPresentationLocalization.process(page)
end
Jekyll::Hooks.register :site, :post_write do |site|
  UYPresentationLocalization.controls(site)
  Jekyll.logger.info "UY presentación:", "#{UYPresentationLocalization.changes} textos localizados en #{UYPresentationLocalization.pages} páginas"
end
