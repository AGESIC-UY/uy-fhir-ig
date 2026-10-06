El catálogo reúne los conjuntos de valores para datos geográficos, roles y especialidades profesionales. Su aplicación y las reglas de vinculación se definen en los perfiles correspondientes.

| Conjunto de valores | Uso |
| --- | --- |
| [Departamentos de Uruguay](ValueSet-vs-departamentos-uy.html) | Departamento de la dirección: `Address.state`. |
| [Localidades de Uruguay](ValueSet-vs-localidades-uy.html) | Localidad de la dirección: `Address.city`. |
| [Barrios y localidades postales](ValueSet-vs-barrios-localidades-uy.html) | Barrio o localidad postal: `Address.district`. |
| [Códigos postales de Uruguay](ValueSet-vs-codigos-postales-uy.html) | Código postal de la dirección: `Address.postalCode`. |
| [Roles profesionales](ValueSet-vs-rol-profesional.html) | Función profesional: `PractitionerRole.code`. |
| [Especialidades médicas](ValueSet-vs-especialidad-medica.html) | Especialidad profesional: `PractitionerRole.specialty`. |

Los catálogos geográficos se basan en fuentes públicas de OSE y del Correo Uruguayo. Cada concepto del ValueSet incluye un código y un display para su presentación. Los códigos de nombres conservan la escritura de la fuente. No se deben sustituir por identificadores numéricos externos en los campos string de Address.

| Catálogo | Fuente y alcance |
| --- | --- |
| Departamentos | Los 19 departamentos, contrastados con el listado nacional del Correo Uruguayo. |
| Localidades | [Regiones, departamentos y localidades de OSE](https://catalogodatos.gub.uy/es/dataset/localidades-del-uruguay), actualización 16/12/2025. Es la jerarquía utilizada por OSE, no un censo exhaustivo de poblaciones; el binding extensible admite localidades que no cubra el catálogo. |
| Barrios y localidades postales | [Listado nacional del Correo Uruguayo](https://www.correo.com.uy/IsisBusquedaDireccionPlugin/listadoDinamicoCP.jsp), consultado el 21/09/2026. Incluye denominaciones postales de distinta naturaleza y no constituye una delimitación administrativa de todos los barrios. |
| Códigos postales | El mismo listado del Correo Uruguayo; se conserva el código de cinco dígitos como string. |

Los nombres repetidos se incluyen una sola vez en cada catálogo. El binding comprueba pertenencia, no la combinación entre departamento, localidad y código postal. Los conjuntos de roles y especialidades permanecen pendientes de validación terminológica.
