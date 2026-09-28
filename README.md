# Guía de Implementación FHIR de Uruguay

Guía FHIR R4 (4.0.1) que reúne la base nacional **Core Uruguay** y las especificaciones de interoperabilidad con la **Historia Clínica Electrónica Nacional (HCEN)** en una única publicación.

El proyecto está en **borrador de desarrollo**. Este README está dirigido a quienes mantienen la guía.

Las fuentes incluyen una primera versión HCEN con recursos y páginas para pacientes, publicación, consulta y recuperación documental. Las [decisiones de incorporación HCEN](docs/hcen-primera-version.md) registran diferencias con el ODS y contratos pendientes.

## Requisitos

Las herramientas deben estar disponibles en el `PATH`:

| Herramienta | Uso |
| --- | --- |
| Git | Control de versiones |
| Java | Ejecución de HL7 IG Publisher |
| Node.js y SUSHI | Compilación de FHIR Shorthand (FSH) |
| Ruby y Jekyll | Generación del sitio HTML |
| HL7 IG Publisher | Generación de recursos, validación y publicación local |

Como referencia del entorno de desarrollo se han utilizado Java 21, Node.js 24 y SUSHI 3.20.0. No constituyen una declaración de versiones mínimas compatibles. El repositorio no fija todas las versiones de las herramientas.

Comprobar la instalación desde PowerShell:

```powershell
java -version
node --version
sushi.cmd --version
ruby --version
jekyll --version
```

El script de compilación busca `publisher.jar` en `input-cache/` o en la raíz del repositorio. Se necesita acceso a Internet para descargar el Publisher, las dependencias y la plantilla, y para consultar el servidor terminológico.

**OBS:** Crowdstrike puede bloquear la descarga de estos componentes y hacer que falle la compilación de la guía.

## Inicio rápido

Desde la raíz del repositorio, en PowerShell:

```powershell
cd ig
sushi.cmd .
.\_build.bat
```

En el menú de `_build`:

1. Si falta el Publisher, seleccionar **1** para descargarlo. Esta opción también ofrece actualizar los scripts de compilación; revisar sus cambios antes de incluirlos en un commit.
2. Seleccionar **2** para generar la guía y ejecutar la validación con el servidor terminológico.
3. Abrir `output/es/index.html` para revisar el sitio y `output/qa.html` para revisar los resultados de validación.

```bash
sushi .
bash ./_build.sh
```

La ejecución inicial de SUSHI permite detectar errores FSH rápidamente. La compilación completa vuelve a ejecutar SUSHI como parte del proceso.

## Modos de compilación

| Objetivo | Comando en PowerShell | Alcance |
| --- | --- | --- |
| Comprobar FSH | `sushi.cmd .` | Genera recursos en `fsh-generated/`; no genera el sitio ni sustituye la validación del Publisher |
| Compilar y validar | `.\_build.bat build` (opción 2) | Ejecuta el Publisher con consultas terminológicas cuando el servidor está disponible; revisar el registro |
| Reutilizar FSH generado | `.\_build.bat nosushi` (opción 3) | Omite SUSHI; requiere que `fsh-generated/` corresponda a las fuentes actuales |
| Revisar sin servidor terminológico | `.\_build.bat notx` (opción 4) | Ejecuta con `-tx n/a`; útil para revisión visual, no sustituye la validación terminológica |
| Regenerar solo HTML | `.\_build.bat jekyll` (opción 5) | Reutiliza `temp/pages/`; también reconstruye el índice estático del buscador; no procesa cambios nuevos en FSH ni sustituye al Publisher |

El modo sin servidor terminológico puede necesitar Internet para otros componentes.

## Estructura del repositorio

```text
.
├── README.md
├── sushi-config.yaml      # Identidad, dependencias, idioma, menú y páginas
├── ig.ini                 # Configuración de entrada y plantilla del Publisher
├── _build.bat / _build.sh # Herramientas de compilación
├── docs/                  # Documentación para mantenimiento
│   ├── AGENTS.md          # Lineamientos de alcance, redacción y mantenimiento
│   └...
├── input/
│   ├── fsh/core-uy/       # Perfiles, tipos de datos, extensiones, terminología y ejemplos
│   ├── fsh/hcen/          # Recursos de intercambio, ejemplos y capacidades HCEN
│   ├── pagecontent/       # Páginas editoriales en Markdown
│   ├── intro-notes/       # Fragmentos opcionales para artefactos
│   ├── images/            # Imágenes y banners SVG
│   └── includes/          # Fragmentos de plantilla y estilos propios
├── custom-template/       # Extensión local de la plantilla FHIR y sus recursos web
├── scripts/               # Herramientas auxiliares de compilación
├── fsh-generated/         # Generado por SUSHI
├── input-cache/           # Publisher y cachés de compilación
├── temp/                  # Archivos intermedios
├── template/              # Plantilla descargada
└── output/                # Sitio, paquete y reportes generados
```

**CONSIDERAR:** Excluir los directorios generados y de caché mediante `.gitignore`.

## Cómo trabajar en la guía

Leer primero los [lineamientos de la guía](docs/AGENTS.md). Core Uruguay define estructuras nacionales reutilizables; HCEN agrega casos de uso y obligaciones de interoperabilidad. En esta guía, **Must Support se aplica exclusivamente a HCEN**.

| Cambio | Archivo o carpeta |
| --- | --- |
| Identidad, dependencias, idioma y navegación | [sushi-config.yaml](sushi-config.yaml) |
| Plantilla y entrada del Publisher | [ig.ini](ig.ini) |
| Contenido de las páginas | [input/pagecontent/](input/pagecontent/) |
| Perfiles y otros artefactos del Core | [input/fsh/core-uy/](input/fsh/core-uy/) |
| Perfiles y otros artefactos de HCEN | [input/fsh/hcen](input/fsh/hcen/) |
| Explicaciones complementarias de un artefacto | [input/intro-notes/](input/intro-notes/) |
| Colores y estilos | [fragment-css.html](input/includes/fragment-css.html) |
| Cabecera | [fragment-header.html](input/includes/fragment-header.html) |
| Banners | [input/images/](input/images/) |
| JavaScript publicado | [custom-template/content/assets/js/](custom-template/content/assets/js/) |
| Generadores auxiliares | [scripts/](scripts/) |

Al agregar una página, registrarla en `pages` de `sushi-config.yaml` y enlazarla desde el menú o desde la página correspondiente. Mantener coherentes la navegación y el recorrido didáctico.

### Redacción y textos en español

Escribir en español, con archivos UTF-8. En FSH, usar `Description` para el propósito del artefacto, `^short` para el texto de las tablas y `^definition` para las definiciones detalladas. Conservar los nombres técnicos FHIR y los códigos externos.

Las descripciones de atributos toman como referencia el [ODS de recursos](<docs/Recursos HCEN FHIR_v2.ods>); revisar el contexto antes de trasladarlas. Consultar [Textos en español](docs/textos-en-espanol.md) para las correspondencias, las fuentes de cada texto y los límites de traducción de las herramientas.

Agregar fragmentos solo si aportan información adicional, sin repetir `Description` ni las tablas:

```text
input/intro-notes/StructureDefinition-{id}-intro.md
input/intro-notes/StructureDefinition-{id}-notes.md
```

No es obligatorio crear ambos archivos. No se registran como páginas del menú.

### Estilo visual

Paleta azul y dorada.

Referenciar las imágenes por su nombre de archivo, sin `assets/images/`: el Publisher las copia junto al HTML, incluidas las carpetas por idioma. La portada se mantiene en `input/pagecontent/index.md`.

### Plantilla local y buscador

`custom-template/` es una extensión local de `fhir2.base.template`, configurada desde `ig.ini`. Conservar allí los recursos estáticos que deben formar parte de cada publicación, como `content/assets/js/uy-search.js`. Los archivos `.index.db` y `.index.json` que el Publisher genera dentro de esa carpeta no son fuente y se ignoran.

El índice del buscador se construye desde `output/es/` mediante `scripts/generate-search-index.mjs`. El script se ejecuta al finalizar los modos de compilación y escribe `output/es/assets/js/uy-search-index.js`; ese archivo es generado y no se edita manualmente.

## Verificación antes de proponer cambios

- Ejecutar SUSHI cuando cambien los FSH o la configuración y resolver los errores introducidos.
- Generar el sitio cuando cambien contenido, navegación, imágenes o estilos; revisar las páginas afectadas en `output/es/`.
- Revisar `output/qa.html`, incluidos los errores, advertencias y enlaces rotos. Distinguir los problemas previos de los introducidos por el cambio.
- Para cambios en perfiles, ejemplos o terminología, ejecutar la validación del Publisher con servidor terminológico. Si no es posible, indicar qué validación quedó pendiente.
- Comprobar que el diff contenga las fuentes y documentación esperadas, sin archivos generados.

## Problemas frecuentes

| Síntoma | Qué revisar |
| --- | --- |
|  x  |  x  |

## Contribuciones

Trabajar en una rama y presentar un pull request con el problema que se resuelve, el alcance Core o HCEN y las verificaciones realizadas. Para cambios visuales, incluir capturas cuando ayuden a revisar el resultado. Explicitar los pendientes y las limitaciones de validación.

Mantener los [lineamientos](docs/AGENTS.md) y la documentación de mantenimiento actualizados cuando se acuerden cambios de alcance o de proceso.

El diseño visual aprobado y las rutas de sus recursos se documentan en [Mantenimiento del estilo visual](docs/estilo-visual.md). La cabecera activa usa HTML y logos separados; el SVG uy-core-header.svg se conserva solo como referencia histórica.
