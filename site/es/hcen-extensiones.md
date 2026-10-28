# Extensiones HCEN - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensiones HCEN

Las extensiones HCEN representan datos específicos del intercambio documental. Se utilizan en los perfiles enlazados; no agregan por sí solas requisitos a los perfiles Core.

### Extensiones locales

| | |
| :--- | :--- |
| [Cantidad de Estudios](StructureDefinition-ext-amount-of-studies.md) | Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies. |
| [ID del Recurso Binario](StructureDefinition-ext-binary-resource-id.md) | Referencia al recurso Binary que contiene la representación CDA del documento clínico. |
| [Por Orden De](StructureDefinition-ext-by-order-of.md) | Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder. |
| [ID de Comunidad de Origen](StructureDefinition-ext-home-community-id.md) | Comunidad de origen del documento o conjunto. Obligatoria en DocumentReference y SubmissionSet, con valor fijo`urn:oid:2.16.858.2.10000675.73183.1`. |
| [Certificación del Profesional](StructureDefinition-ext-practitioner-certification.md) | Definición disponible para representar al profesional que certifica un documento. No se utiliza actualmente en ningún perfil. |
| [Enfermedad de Notificación Obligatoria (ENO)](StructureDefinition-ext-practitioner-eno.md) | Definición disponible para representar al profesional que notifica una ENO. No se utiliza actualmente en ningún perfil. |
| [ID Único del Repositorio](StructureDefinition-ext-repository-id.md) | Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS. |
| [Documento Escaneado](StructureDefinition-ext-scanned-document.md) | Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument. |
| [Modalidad de Telemedicina](StructureDefinition-ext-telemedicine-modality.md) | Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine. |
| [Organización Financiadora](StructureDefinition-ext-funder.md) | Organización que financia el servicio. Mapea a DocumentEntry.funder. |

