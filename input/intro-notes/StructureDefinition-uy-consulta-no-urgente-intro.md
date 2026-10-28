La Composition organiza la Hoja de Consulta No Urgente y referencia al paciente, al rol profesional autor, a la organización custodia y al encuentro clínico. `type` está fijado a LOINC `34108-1`.

`encounter` es obligatorio y referencia [HCENEncounter](StructureDefinition-hcen-encounter.html), con estado `finished`. Ese encuentro debe incluir al menos un participante con `period.start`, donde se registra la fecha y hora de firma del profesional según el mapeo CDA.

Las secciones de motivos de consulta y diagnósticos son obligatorias. Las demás secciones se utilizan según el contenido de la atención. El slicing es abierto: se admiten secciones adicionales que respeten las restricciones del perfil. La [descripción de la CNU](hcen-documentos-clinicos.html) permite localizar el perfil de cada entrada clínica.
