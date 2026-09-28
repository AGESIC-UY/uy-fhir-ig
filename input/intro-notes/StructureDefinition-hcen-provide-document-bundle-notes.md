### Relación con MHD y límites del contrato

Este perfil adapta la organización de UnContainedComprehensiveProvideDocumentBundle de MHD 4.2.3. Deriva de Bundle porque el slicing IHE es cerrado y exige perfiles IHE de metadatos, mientras HCEN incorpora contexto adicional y reglas propias de identificación. No declara conformidad integral IHE.

Las invariantes comprueban unicidad de fullUrl, enlaces FHIR/CDA, pertenencia de los DocumentReference al SubmissionSet y derivación de su identificador. No comprueban la equivalencia clínica, la correspondencia de versión ni la resolución de todas las referencias clínicas o históricas.

La persistencia y respuesta de las entradas POST siguen pendientes. Una transacción FHIR estándar no puede interpretarse como procesamiento parcial sin adaptar el contrato. Consultar [Publicación](hcen-iti-65.html#pendientes) antes de utilizar este sobre en un servicio.
