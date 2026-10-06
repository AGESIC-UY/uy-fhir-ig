Este glosario reúne los términos y siglas que se utilizan en las páginas de la Guía HCEN. Los conceptos generales de FHIR, como recurso, perfil o Bundle, se explican en [Conceptos básicos de FHIR](conceptos-fhir.html).

### Actores y funcionamiento

| Término | Significado en esta guía |
| --- | --- |
| HCEN | Historia Clínica Electrónica Nacional. |
| Prestador | Institución de salud que se integra con HCEN. Registra pacientes, publica, consulta y recupera documentos. Ver [Actores](hcen-actores.html). |
| Plataforma | Componente central de HCEN, implementado por Salud Digital. Registra pacientes y metadatos e intermedia la recuperación de documentos; no conserva los documentos. |
| Repositorio | Sistema del prestador que conserva los documentos y los entrega cuando Plataforma los solicita. |
| Despliegue | Conjunto de productos con los que un prestador cubre las funciones de esta guía. La conformidad se evalúa sobre el despliegue, no sobre cada producto. |
| Publicación inicial | Primer registro de un documento en Plataforma. Se distingue del reemplazo y de la anulación, que esta versión no incorpora. |
| Registro inicial | Primera vez que un prestador envía un paciente a Plataforma. Se distingue de la actualización de sus datos. |

### Documentos y representaciones

| Término | Significado en esta guía |
| --- | --- |
| CDA | Clinical Document Architecture: formato XML de documentos clínicos de HL7. En el nivel 1 el cuerpo no está estructurado, por ejemplo un PDF embebido; en el nivel 3 el contenido está estructurado y codificado. |
| Representación | Cada una de las dos formas en que se conserva un mismo documento: FHIR y CDA. |
| Bundle documental | Bundle FHIR de tipo `document`, cuya primera entrada es una Composition. Es la representación FHIR del documento clínico. |
| Binary | Recurso FHIR que transporta contenido en otro formato. [HCENCdaBinary](StructureDefinition-hcen-cda-binary.html) encapsula el CDA en base64. |
| CNU | Hoja de Consulta No Urgente, el primer documento clínico especificado. Ver [Documentos clínicos](hcen-documentos-clinicos.html). |
| Metadatos | Datos que describen un documento sin incluir su contenido: paciente, autor, tipo, fechas y ubicación. Se expresan en DocumentReference. |
| DocumentReference | Recurso FHIR que contiene los metadatos de un documento y las referencias a sus dos representaciones. |
| SubmissionSet (conjunto de envío) | Agrupación de los documentos que se publican juntos. Proviene de XDS y se expresa con el recurso `List` en [HCENSubmissionSet](StructureDefinition-hcen-submission-set.html). |
| Bundle de publicación | Bundle que transporta un envío de publicación completo, basado en la interfaz Provide Document Bundle de MHD y adaptado a las convenciones HCEN/XDS: conjunto de envío, metadatos, documento FHIR y recursos de contexto. Corresponde a [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html) y es distinto del Bundle documental. |
| Recursos de contexto | Paciente, profesional, rol y organización a los que hacen referencia los metadatos y que se incluyen en el Bundle de publicación. |
| Autocontenido | Documento que resuelve sus referencias clínicas con sus propios recursos. En el envío de publicación, la resolución local se exige únicamente para los paths explícitos del contrato de metadatos; no para toda Reference. Ver [Publicación](hcen-iti-65.html#referencias-locales). |
| EJE 1, EJE 2 y EJE 3 | Los tres ejes con los que se clasifica un documento: tipo genérico (`category`), tipo detallado (`type`) y servicio médico (`context.practiceSetting`). Ver [Terminología HCEN](hcen-terminologia.html). |

### Identificadores

| Término | Significado en esta guía |
| --- | --- |
| OID | Object Identifier: identificador numérico jerárquico, por ejemplo `2.16.858...`. En FHIR se escribe con el prefijo `urn:oid:`. |
| MRN | Medical Record Number: identificador local del paciente dentro de un prestador. |
| Dominio MRN o autoridad de asignación (AA) | OID que identifica quién asigna los MRN. Debe estar autorizado por Salud Digital. |
| uniqueId | Identificador de negocio: [oid_documento_clinico] para el documento clínico y S para el conjunto de envío. S es propio del SubmissionSet y es distinto de [oid_documento_clinico]. |
| entryUUID | Identificador técnico del registro de metadatos: 1.[oid_documento_clinico] para DocumentReference y 2.[oid_documento_clinico] para SubmissionSet, derivado de cualquiera de sus miembros. La forma urn:uuid:1.[oid_documento_clinico] / urn:uuid:2.[oid_documento_clinico] es una convención histórica HCEN/XDS, no un UUID RFC estándar. |
| homeCommunityId | Identificador de la comunidad de origen de los metadatos. |
| repositoryId | OID del repositorio que conserva el documento. |

El uso de cada identificador se detalla en [Identificadores HCEN](hcen-identificadores.html).

### Referencias y conformidad

| Término | Significado en esta guía |
| --- | --- |
| IHE | Integrating the Healthcare Enterprise: organización que publica perfiles de integración basados en estándares. |
| ITI | IT Infrastructure, el dominio de IHE al que pertenecen estos perfiles. Sus transacciones se numeran, por ejemplo ITI-65. |
| XDS | Cross-Enterprise Document Sharing: perfil de IHE para compartir documentos mediante un registro de metadatos y repositorios. |
| MHD | Mobile access to Health Documents: perfil de IHE que ofrece las funciones de XDS mediante FHIR. Referencia para publicar, consultar y recuperar. |
| PIXm | Patient Identifier Cross-referencing for mobile: perfil de IHE sobre FHIR para identidades de pacientes. Referencia para registrar pacientes. |
| UnContained | Opción de MHD en la que los recursos referenciados por los metadatos viajan como entradas del Bundle y no como recursos contenidos. |
| INUS | Índice Nacional de Usuarios de Salud. Su mensajería HL7 v2 es el antecedente del registro de pacientes. |
| HCEN-PUB-001 y similares | Identificador de un requisito, que permite citarlo desde otras páginas. |
| MS (Must Support) | Marca de un elemento que el emisor debe enviar cuando conoce el dato. Ver [Must Support](hcen-conformidad.html#must-support). |
| OperationOutcome | Recurso FHIR con el que se informa el detalle de un error. |
