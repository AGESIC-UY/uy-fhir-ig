Las extensiones HCEN representan datos específicos del intercambio documental. Se utilizan en los perfiles enlazados; no agregan por sí solas requisitos a los perfiles Core.

### Extensiones locales

| Extensión | Uso |
| --- | --- |
| [Cantidad de Estudios](StructureDefinition-ext-amount-of-studies.html) | Cantidad de estudios incluidos en el documento. Mapea a DocumentEntry.amountOfStudies. |
| [ID del Recurso Binario](StructureDefinition-ext-binary-resource-id.html) | Referencia al recurso Binary que contiene la representación CDA del documento clínico. |
| [Por Orden De](StructureDefinition-ext-by-order-of.html) | Organización por cuya orden se generó el documento. Mapea a DocumentEntry.byOrder. |
| [ID de Comunidad de Origen](StructureDefinition-ext-home-community-id.html) | El homeCommunityId donde reside el artefacto. Mapea a DocumentEntry.homeCommunityId. |
| [Certificación del Profesional](StructureDefinition-ext-practitioner-certification.html) | Definición disponible para representar al profesional que certifica un documento. No se utiliza actualmente en ningún perfil. |
| [Enfermedad de Notificación Obligatoria (ENO)](StructureDefinition-ext-practitioner-eno.html) | Definición disponible para representar al profesional que notifica una ENO. No se utiliza actualmente en ningún perfil. |
| [ID Único del Repositorio](StructureDefinition-ext-repository-id.html) | Identificador único del repositorio. Mapea a DocumentEntry.repositoryUniqueId de XDS. |
| [Documento Escaneado](StructureDefinition-ext-scanned-document.html) | Indica si el documento fue generado a partir de un escaneo físico. Mapea a DocumentEntry.scannedDocument. |
| [Modalidad de Telemedicina](StructureDefinition-ext-telemedicine-modality.html) | Modalidad de telemedicina utilizada. Mapea a DocumentEntry.telemedicine. |
| [Organización Financiadora](StructureDefinition-ext-funder.html) | Organización que financia el servicio. Mapea a DocumentEntry.funder. |

### Extensiones IHE reutilizadas

HCENSubmissionSet utiliza `ihe-designationType` para su clasificación clínica, `ihe-sourceId` para identificar al origen e `ihe-intendedRecipient` para destinatarios, desde MHD 4.2.3. No se publica una extensión local ContentTypeCode que duplique `designationType`.

La extensión `binary` de DocumentReference.content.attachment es una referencia a HCENCdaBinary, no su `id` ni los datos CDA. Las extensiones de certificación y notificación obligatoria se mantienen definidas, pero no se incorporan a HCENPractitioner ni a otro perfil hasta que se acuerde cómo representar su contexto documental.

Las extensiones locales simples requieren un valor cuando están presentes. Una extensión booleana con valor `false` no equivale a omitir un dato desconocido. Los apellidos y las extensiones comunes de personas se consultan en el [Core](extensiones.html).
