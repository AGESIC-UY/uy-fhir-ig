# Terminología del Core - Guía de Implementación FHIR de Uruguay v0.2.0

## Terminología del Core

El catálogo reúne los conjuntos de valores para datos geográficos, roles y especialidades profesionales. Su aplicación y las reglas de vinculación se definen en los perfiles correspondientes.

| | |
| :--- | :--- |
| [Departamentos de Uruguay](ValueSet-vs-departamentos-uy.md) | Departamento de la dirección:`Address.state`. |
| [Localidades de Uruguay](ValueSet-vs-localidades-uy.md) | Localidad de la dirección:`Address.city`. |
| [Barrios y localidades postales](ValueSet-vs-barrios-localidades-uy.md) | Barrio o localidad postal:`Address.district`. |
| [Códigos postales de Uruguay](ValueSet-vs-codigos-postales-uy.md) | Código postal de la dirección:`Address.postalCode`. |
| [Roles profesionales](ValueSet-vs-rol-profesional.md) | Función profesional:`PractitionerRole.code`. |
| [Especialidades médicas](ValueSet-vs-especialidad-medica.md) | Especialidad profesional:`PractitionerRole.specialty`. |

Los catálogos geográficos se basan en fuentes públicas de OSE y del Correo Uruguayo.

| | |
| :--- | :--- |
| Departamentos | Los 19 departamentos, contrastados con el listado nacional del Correo Uruguayo. |
| Localidades | [Regiones, departamentos y localidades de OSE](https://catalogodatos.gub.uy/es/dataset/localidades-del-uruguay), actualización 16/12/2025. |
| Barrios y localidades postales | [Listado nacional del Correo Uruguayo](https://www.correo.com.uy/IsisBusquedaDireccionPlugin/listadoDinamicoCP.jsp), consultado el 21/09/2026. |
| Códigos postales | El mismo listado del Correo Uruguayo. |

