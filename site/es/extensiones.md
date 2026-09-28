# Extensiones del Core - Guía de Implementación FHIR de Uruguay v0.1.0

## Extensiones del Core

Las extensiones propias del Core permiten distinguir los apellidos dentro de HumanName.family. El perfil de paciente también referencia extensiones de HL7, declaradas como dependencias de la guía.

### Catálogo inicial

| | |
| :--- | :--- |
| [Primer Apellido](StructureDefinition-ext-primer-apellido.md) | Primer apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad. |
| [Segundo Apellido](StructureDefinition-ext-segundo-apellido.md) | Segundo apellido de la persona. Se representa como extensión de HumanName.family para permitir su discriminación, manteniendo family con todos los apellidos concatenados para interoperabilidad. |

Cada página presenta el propósito del artefacto y su definición técnica. Los artefactos se incorporan como base de trabajo en estado de borrador.

