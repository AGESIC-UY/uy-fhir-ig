Esta transacción permite registrar o actualizar los datos demográficos de los pacientes del prestador en Plataforma. Toma como referencia de diseño, sin declarar conformidad, la alimentación de pacientes de [PIXm ITI-104, versión 3.1.0](https://profiles.ihe.net/ITI/PIXm/3.1.0/ITI-104.html).

El objetivo de esta transacción es que Plataforma posea la información suficiente para unificar los registros de pacientes de las distintas instituciones, y así poder unificar en un registro consolidado la historia clínica completa.

### Actores y precondiciones

El prestador actúa como fuente de identidad y Plataforma administra los registros e identidades. El prestador debe (SHALL) usar su MRN local y un dominio autorizado por Plataforma. [HCENMRNIdentifier](StructureDefinition-hcen-mrn-identifier.html) controla su formato; la autorización se verifica mediante lógica interna de Plataforma, como se explica en [Identificadores HCEN](hcen-identificadores.html). El cuerpo debe (SHALL) cumplir [HCENPatient](StructureDefinition-hcen-patient.html).

<figure style="margin:0 0 1em;">
  <img src="hcen-cu-registrar-paciente.svg"
       alt="El prestador envía a Plataforma el paciente con su MRN y los datos conocidos. Plataforma crea o actualiza el registro y devuelve el resultado."
       style="width:100%;max-width:760px;height:auto;"/>
  <figcaption>Registro o actualización de un paciente.</figcaption>
</figure>

El prestador debería (SHOULD) completar esta transacción antes de publicar documentos. Si se omite, [HCEN ITI-65](hcen-iti-65.html) permite crear al paciente que todavía no existe. La publicación no actualiza un paciente existente.

### Solicitud

El registro se identifica por el par dominio MRN y valor MRN, expresado como `system|value` en una actualización condicional. El dominio y el valor del filtro deben (SHALL) coincidir con el MRN del cuerpo. Los caracteres reservados del token se codifican para su uso en la URL.

```http
PUT [base]/Patient?identifier=[system-codificado]%7C[valor-codificado] HTTP/1.1
Accept: application/fhir+json
Content-Type: application/fhir+json

{ recurso HCENPatient }
```

La identificación y los datos demográficos se completan según [HCENPatient](StructureDefinition-hcen-patient.html). El [ejemplo de paciente HCEN](Patient-hcen-paciente-gonzalez.html) ilustra el contenido del recurso.

<a id="mapeo-inus"></a>
El [mapeo desde INUS](StructureDefinition-hcen-patient.html#mapeo-inus) explica cómo representar los datos de la mensajería de pacientes en este recurso.

### Reglas de procesamiento

Si no existe un registro con ese par, Plataforma lo crea. Si existe, lo sustituye por el Patient enviado. La solicitud implica una sustitución completa de los datos del recurso, no una actualización parcial. La CI no es la clave de coincidencia: dos pares MRN distintos corresponden a registros distintos aunque compartan la misma CI. El emisor debe (SHALL) enviar los datos MS que conoce. Consultar [Must Support](hcen-conformidad.html#must-support).

<!-- HCEN-POC: inicio -->
<div class="hcen-poc" style="border:2px solid #b42318;border-left-width:6px;background:#fff4f2;padding:1em;margin:1em 0;">
  <p><strong>PoC — Diferencia con Plataforma</strong></p>
  <p>El Gateway rechaza un segundo registro con la misma CI, aunque su MRN sea distinto. Plataforma considera distintos esos registros. La reproducción de esta diferencia se documenta con las pruebas de la PoC. No debe interpretarse como una regla de identificación de HCEN.</p>
</div>
<!-- HCEN-POC: fin -->

La transacción sigue la [actualización condicional FHIR R4](https://hl7.org/fhir/R4/http.html#cond-update): cero coincidencias permite crear el paciente, una coincidencia permite actualizarlo y más de una impide seleccionar el destino. Esta versión contempla altas y actualizaciones simples.

### Respuesta

| Situación | Resultado |
| --- | --- |
| Registro inicial | `201 Created`, con identificación del recurso según FHIR. |
| Actualización | `200 OK`, conforme a FHIR y a las preferencias de respuesta. |

### Errores

Si la búsqueda condicional encuentra múltiples coincidencias, la transacción devuelve `412 Precondition Failed` y un `OperationOutcome` con el detalle del problema.

Un recurso o identificador inválido, la discordancia entre el MRN del filtro y el del cuerpo o un dominio MRN no autorizado provocan el rechazo de la solicitud. Esta guía no especifica los códigos HTTP particulares para estos errores de validación.
