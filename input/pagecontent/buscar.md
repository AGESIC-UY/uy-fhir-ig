<div class="uy-search-page">
  <p class="uy-search-intro">Encuentre páginas de orientación y artefactos publicados. La búsqueda ignora mayúsculas, tildes y acentos.</p>

  <form id="uy-search-form" class="uy-search-controls" role="search" aria-label="Buscar en la guía">
    <input id="uy-search-query" name="q" type="search" placeholder="Ej.: paciente, documento clínico" autocomplete="off" required/>
    <button type="submit" aria-label="Buscar">
      <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false"><path d="m21 19-4.35-4.35a8 8 0 1 0-2 2L19 21l2-2ZM5 10a5 5 0 1 1 10 0 5 5 0 0 1-10 0Z"/></svg>
    </button>
  </form>

  <p id="uy-search-status" class="uy-search-status" aria-live="polite"></p>
  <ol id="uy-search-results" class="uy-search-results"></ol>
</div>

<script defer="defer" src="assets/js/uy-search-index.js"> </script>
<script defer="defer" src="assets/js/uy-search.js"> </script>
