# Extensiones del Core - Guía de Implementación FHIR de Uruguay v0.2.0

## Extensiones del Core

Las extensiones propias del Core complementan el nombre de la persona en `HumanName.family` y los datos del paciente en [UYPatient](StructureDefinition-uy-patient.md).

| | |
| :--- | :--- |
| [Primer apellido](StructureDefinition-ext-primer-apellido.md) | Identifica por separado el primer apellido de la persona. |
| [Segundo apellido](StructureDefinition-ext-segundo-apellido.md) | Identifica por separado el segundo apellido de la persona. |
| [Identidad de género](StructureDefinition-ext-identidad-de-genero.md) | Representa la identidad de género del paciente. Deriva de`individual-genderIdentity`de HL7. |
| [Pronombres](StructureDefinition-ext-pronombres.md) | Representa los pronombres del paciente. Deriva de`individual-pronouns`de HL7. |
| [Sexo al nacer](StructureDefinition-ext-sexo-al-nacer.md) | Representa el sexo asignado al nacer. Deriva de`individual-recordedSexOrGender`de HL7. |

El [ejemplo de paciente Pérez completo](Patient-uy-paciente-perez-completo.md) muestra las cinco extensiones en uso.

