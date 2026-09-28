# Registrar o actualizar pacientes - Guía de Implementación FHIR de Uruguay v0.1.0

## Registrar o actualizar pacientes

Esta transacción permite registrar o actualizar la identificación y los datos demográficos de un paciente del prestador en Plataforma. Toma como referencia la alimentación de pacientes de [PIXm ITI-104, versión 3.1.0](https://profiles.ihe.net/ITI/PIXm/3.1.0/ITI-104.html).

### Actores y precondiciones

El prestador actúa como fuente de identidad y Plataforma administra los registros e identidades. El prestador debe (SHALL) usar su MRN local y un dominio autorizado conforme a [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.md). El cuerpo debe (SHALL) cumplir [HCENPatient](StructureDefinition-hcen-patient.md).

### Solicitud

Se adopta para este borrador la actualización condicional por el token `system|value`. El dominio y el valor del filtro deben (SHALL) coincidir con el MRN del cuerpo. Los caracteres reservados del token se codifican para su uso en la URL.

```
PUT [base]/Patient?identifier=[system-codificado]%7C[valor-codificado]
Accept: application/fhir+json
Content-Type: application/fhir+json

{ recurso HCENPatient }

```

La solicitud representa el estado actualizado del recurso, no un parche parcial. El emisor debe (SHALL) enviar los datos MS que conoce; su ausencia no permite eliminar requisitos obligatorios. Consultar [Must Support](hcen-conformidad.md#must-support).

### Respuesta y errores

La semántica propuesta sigue la [actualización condicional FHIR R4](https://hl7.org/fhir/R4/http.html#cond-update): cero coincidencias permite crear el paciente, una coincidencia permite actualizarlo y más de una impide seleccionar el destino.

| | |
| :--- | :--- |
| Alta | 201 Created; identificación del recurso según FHIR. |
| Actualización | 200 OK; procesamiento conforme a FHIR y a las preferencias de respuesta. |
| Múltiples coincidencias | 412 Precondition Failed y detalle mediante OperationOutcome. |
| Recurso o identificador inválido | Rechazo con información del problema; queda por cerrar la clasificación HTTP local de validación. |

El prestador debería (SHOULD) completar esta transacción antes de publicar documentos. Plataforma dispone del mecanismo de respaldo indicado en [Publicación](hcen-iti-65.md); su política de coincidencia no se deduce del perfil Patient.

### Verificación y límites

Las pruebas deben cubrir alta, actualización, discordancia entre token y cuerpo, MRN no autorizado, datos MS conocidos y múltiples coincidencias. El [ejemplo de paciente](Patient-hcen-paciente-ejemplo.md) ilustra el cuerpo; el [resultado de coincidencia múltiple](OperationOutcome-iti104-error-coincidencia-multiple.md) ilustra el error.

Quedan pendientes la política de concurrencia, las reglas de unificación y los contratos de fusión, inactivación y eliminación. La existencia de `Patient.link` no declara esos flujos como implementados.

