### Datos conocidos y registro del paciente

Este perfil toma PIXm Patient como referencia de diseño, sin declarar conformidad con el estándar PIXm. Los mismos mínimos se aplican al registro de pacientes y al contexto de publicación documental.

El MRN es obligatorio y utiliza [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.html), con el dominio de asignación en `system` y el número local en `value`. Nombre, sexo administrativo y nacimiento conservan la cardinalidad opcional y se envían cuando se conocen según MS. Esto permite registrar un paciente y su evento clínico en una emergencia aunque todavía no se disponga de esos datos. No informar un dato desconocido no autoriza omitir el MRN ni enviar elementos vacíos.

La CI HCEN (`identifier[ci]`, `HCENCIIdentifier`) es opcional y Must Support: puede omitirse si no está disponible. Se admiten pacientes con MRN y pasaporte sin CI. El DNI nacional (`identifier[dni]`) se hereda como opcional y puede coexistir con la CI HCEN. Los identificadores adicionales admitidos por el slicing abierto no sustituyen al MRN.

### Sexo o género

El atributo `gender` identifica sexo administrativo. La extensión `sexoAlNacer` identifica el sexo de nacimiento de la persona, independientemente del sexo administrativo o identidad de género actual.

### Datos del paciente

Los apellidos y las extensiones comunes de personas se consultan en el [Core](extensiones.html).

| Grupo | Datos |
| --- | --- |
| Obligatorios | MRN (`identifier[mrn]`), con tipo, sistema (OID del dominio del prestador) y valor. |
| MS | Cédula de identidad (`identifier[ci]`), pasaporte (`identifier[ppn]`), nombre (`name`, a lo sumo uno), sexo administrativo (`gender`), fecha de nacimiento (`birthDate`), sexo al nacer (`extension[sexoAlNacer]`), teléfono y correo electrónico (`telecom`) y dirección (`address`). |
| No admitidos | `photo`, `implicitRules`, `modifierExtension` y la extensión de apellido materno (`mothersMaidenName`), que no equivale al segundo apellido. |

### Relación con CDA

El documento clínico y la interacción con HCEN se generan en el mismo momento y con la misma información de la persona. Por eso, los datos que no son obligatorios en HCEN tampoco se exigen en el documento: un dato que falta para el registro del paciente tampoco está disponible para el CDA. La guía CDA Mínimo vigente considera obligatorios el primer nombre, el primer apellido y el sexo del paciente, esta guía no adopta esa exigencia.

<a id="mapeo-inus"></a>
### Mapeo desde INUS

El mapeo conserva el significado de los datos de la mensajería INUS-EMPI en su representación FHIR. No traslada automáticamente las cardinalidades de los campos HL7 v2 al perfil HCENPatient.

| Dato INUS | Representación FHIR | Orientación |
| --- | --- | --- |
| PID-3, MRN y AA | `identifier[mrn].value` y `identifier[mrn].system` | El número local se informa en value y el OID de la AA como URI urn:oid: en system. |
| PID-3, CI uruguaya para HCEN | `identifier[ci]` | `HCENCIIdentifier`, con system urn:oid:2.16.858.2.10000675.68909; opcional MS. |
| PID-3, documento nacional | `identifier[dni]` | `UYDNIIdentifier`, según el país emisor; opcional. |
| PID-3, otros identificadores | Slices de `identifier` correspondientes | Conservar el número y su sistema emisor; no sustituir el MRN obligatorio. |
| PID-5, nombres y primer apellido | `name.given` y `name.family.extension[primerApellido]` | Conservar el orden de los nombres y expresar también los apellidos en family. |
| PID-6, usado para segundo apellido | `name.family.extension[segundoApellido]` | No utilizar Mother's Maiden Name: el segundo apellido no expresa por sí solo el apellido de soltera de la madre. |
| PID-7, nacimiento | `birthDate` | Convertir AAAAMMDD a AAAA-MM-DD cuando se conoce la fecha completa. |
| PID-8, sexo administrativo ISO 5218 | `gender` | 0 → unknown; 1 → male; 2 → female. El valor 9 (no aplica) no tiene equivalencia exacta con los códigos FHIR; no convertirlo automáticamente a other. |
| PID-11, dirección | `address` | Representar la dirección con las reglas del Core y conservar su uso cuando exista una correspondencia. |
| PID-13, contactos | `telecom` | Distinguir teléfono y correo electrónico y conservar sus valores. |

El mapeo no agrega obligatoriedad al segundo apellido ni a los demás datos demográficos opcionales. Los datos desconocidos se tratan según [Must Support](hcen-conformidad.html#must-support).
