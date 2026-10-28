# Guía de Implementación FHIR de Uruguay

Guía FHIR R4 (4.0.1) que reúne la base nacional **Core Uruguay** y las especificaciones de interoperabilidad con la **Historia Clínica Electrónica Nacional (HCEN)** en una única publicación.

El proyecto está en **borrador de desarrollo**.

Las fuentes incluyen una primera versión HCEN con recursos y páginas para pacientes, publicación, consulta y recuperación documental. Las [decisiones de incorporación HCEN](docs/hcen-primera-version.md) registran diferencias con el ODS y contratos pendientes.

## Releases

Actualmente la Guía se encuentra en la versión **borrador 0.2.0**. En la sección de releases se pueden encontrar y descargar los siguientes insumos:
- `full-ig.zip`: Archivo comprimido que contiene la Guía en su totalidad (incluyendo el sitio html)
- `package.tgz`: Archivo con las definciones de la Guía. Es el paquete que se le pasa al Validador FHIR para que valide contra esta Guía.

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

## Inicio rápido

Desde la raíz del repositorio:

**Windows (PowerShell):**

```powershell
sushi.cmd .
.\_build.bat
```

En el menú, seleccionar **1** si se necesita descargar el Publisher y **2** para compilar y validar. La opción de descarga puede ofrecer actualizar los scripts del build: revisar los cambios antes de incorporarlos al repositorio.

**Linux/macOS (shell):**

```bash
sushi .
bash ./_build.sh
```

Revisar el resultado en `output/es/index.html` y el reporte en `output/qa.html`. Ejecutar SUSHI por separado acelera la detección de errores FSH; el build completo vuelve a ejecutarlo.

### Modos de compilación

| Objetivo | PowerShell | Alcance |
| --- | --- | --- |
| Comprobar FSH | `sushi.cmd .` | Genera `fsh-generated/`; no genera ni valida el sitio. |
| Compilar y validar | `.\_build.bat build` (opción 2) | Ejecuta IG Publisher con validación terminológica si hay conectividad. |
| Reutilizar FSH | `.\_build.bat nosushi` (opción 3) | Omite SUSHI; exige `fsh-generated/` actualizado. |
| Compilar sin terminología remota | `.\_build.bat notx` (opción 4) | Usa `-tx n/a`; **no** sustituye la validación terminológica. |
| Regenerar HTML | `.\_build.bat jekyll` (opción 5) | Reutiliza `temp/pages/`; no procesa cambios FSH ni sustituye al Publisher. |

En shell, los modos se pasan a `bash ./_build.sh`, por ejemplo `bash ./_build.sh notx`. Incluso `notx` puede necesitar Internet para otros componentes.

## Estructura del repositorio

```text
.
├── README.md
├── sushi-config.yaml      # Identidad, dependencias, idioma, menú y páginas
├── ig.ini                 # Configuración de entrada y plantilla del Publisher
├── _build.bat / _build.sh # Herramientas de compilación
├── input/
│   ├── fsh/core-uy/       # Perfiles, tipos de datos, extensiones, terminología y ejemplos
│   ├── fsh/hcen/          # Recursos de intercambio, ejemplos y capacidades HCEN
│   ├── pagecontent/       # Páginas editoriales en Markdown
│   ├── intro-notes/       # Fragmentos opcionales para artefactos
│   ├── images/            # Imágenes y banners SVG
│   └── includes/          # Fragmentos de plantilla y estilos propios
├── custom-template/       # Extensión local de la plantilla FHIR y sus recursos web
├── scripts/               # Herramientas auxiliares de compilación
# Generados:
├── fsh-generated/         # Generado por SUSHI
├── input-cache/           # Publisher y cachés de compilación
├── temp/                  # Archivos intermedios
├── template/              # Plantilla descargada
└── output/                # Sitio, paquete y reportes generados
```
