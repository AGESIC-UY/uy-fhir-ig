(function () {
  "use strict";

  var form = document.getElementById("uy-search-form");
  var input = document.getElementById("uy-search-query");
  var status = document.getElementById("uy-search-status");
  var results = document.getElementById("uy-search-results");
  var params = new URLSearchParams(window.location.search);
  var initialQuery = params.get("q") || "";

  function normalize(value) {
    return value.toLocaleLowerCase("es").normalize("NFD").replace(/[\u0300-\u036f]/g, "");
  }

  function snippet(text, term) {
    var normalizedText = normalize(text);
    var position = normalizedText.indexOf(term);
    var start = Math.max(0, position < 0 ? 0 : position - 90);
    var end = Math.min(text.length, start + 260);
    return (start ? "…" : "") + text.slice(start, end).trim() + (end < text.length ? "…" : "");
  }

  function render(items, terms) {
    results.replaceChildren();
    items.slice(0, 50).forEach(function (item) {
      var li = document.createElement("li");
      var link = document.createElement("a");
      var description = document.createElement("p");
      li.className = "uy-search-result";
      link.href = item.url;
      link.textContent = item.title;
      description.textContent = snippet(item.text, terms[0]);
      li.append(link, description);
      results.appendChild(li);
    });
    status.textContent = items.length ? items.length + " resultado(s)." : "No se encontraron resultados.";
  }

  function search(query) {
    var terms = normalize(query).trim().split(/\s+/).filter(Boolean);
    if (!terms.length) {
      results.replaceChildren();
      status.textContent = "Ingrese un texto para buscar.";
      return;
    }
    if (!Array.isArray(window.UY_SEARCH_INDEX)) {
      status.textContent = "El índice de búsqueda no está disponible en esta publicación.";
      return;
    }
    status.textContent = "Buscando…";
    window.requestAnimationFrame(function () {
      var matches = window.UY_SEARCH_INDEX.map(function (page) {
        var haystack = normalize(page.title + " " + page.text);
        return {
          url: page.url,
          title: page.title,
          text: page.text,
          score: terms.reduce(function (score, term) {
            return score + (normalize(page.title).includes(term) ? 10 : 0) + (haystack.includes(term) ? 1 : 0);
          }, 0),
          matches: terms.every(function (term) { return haystack.includes(term); })
        };
      }).filter(function (page) { return page.matches; }).sort(function (a, b) {
        return b.score - a.score || a.title.localeCompare(b.title, "es");
      });
      render(matches, terms);
    });
  }

  form.addEventListener("submit", function (event) {
    event.preventDefault();
    var query = input.value.trim();
    var next = new URL(window.location.href);
    if (query) next.searchParams.set("q", query); else next.searchParams.delete("q");
    window.history.replaceState({}, "", next);
    search(query);
  });

  input.value = initialQuery;
  if (initialQuery) search(initialQuery); else status.textContent = "Ingrese un texto para buscar.";
})();
