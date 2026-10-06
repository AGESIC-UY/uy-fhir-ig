### Organización del envío

Este perfil adapta la organización de UnContainedComprehensiveProvideDocumentBundle de MHD 4.2.3. Deriva de Bundle porque el slicing IHE es cerrado y exige perfiles IHE de metadatos, mientras HCEN incorpora contexto adicional y reglas propias de identificación. No declara conformidad integral IHE.

El envío incluye un SubmissionSet, uno o más DocumentReference, sus Bundles documentales FHIR y los recursos de contexto referenciados. Binary CDA no debería (SHOULD NOT) enviarse; su referencia en los metadatos permanece obligatoria. Si llega, se tolera, puede ignorarse y no invalida por sí mismo el envío, sin obligación de correspondencia Binary ↔ metadatos y sin cardinalidad 0..0.

Los PractitionerRole utilizados como autores y sus Practitioner y Organization deben estar incluidos como entradas del envío. Las demás entradas necesarias se determinan por los [paths explícitos del contrato de metadatos](hcen-iti-65.html#referencias-locales), sin extender la resolución local a toda Reference ni exigir un ejemplar de cada tipo. Las referencias de metadatos controladas por `hcen-publication-context` deben resolverse a entradas del envío; los recursos contenidos no sustituyen esas entradas. Dentro del documento FHIR se admiten recursos contenidos cuando la estructura FHIR lo permite. Cada Bundle documental debe resolver sus propias referencias clínicas.

Las referencias históricas `relatesTo` pueden apuntar a un DocumentReference ya existente en HCEN y no obligan a incluirlo en el envío. Las relaciones de reemplazo se ignoran porque su procesamiento no está soportado actualmente.

### Validación y contrato de publicación

Las invariantes comprueban unicidad de `fullUrl`, correspondencia uno a uno entre DocumentReference y Bundle documental, pertenencia de todos y solo los DocumentReference al SubmissionSet sin duplicados, resolución de los paths explícitos de metadatos y autocontención de cada documento. El orden de los miembros no tiene significado. No comprueban la equivalencia clínica, la correspondencia de versión ni la existencia de los documentos históricos en HCEN; esta última se verifica durante el procesamiento.

La persistencia y respuesta de las entradas POST siguen pendientes. Una transacción FHIR estándar no puede interpretarse como procesamiento parcial sin adaptar el contrato. Consultar [Publicación](hcen-iti-65.html#pendientes) antes de utilizar este Bundle de publicación en un servicio.
