# Consulta no urgente - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo Composition: Consulta no urgente



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "uy-consulta-no-urgente-traumatologia",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-consulta-no-urgente"]
  },
  "language" : "es-UY",
  "identifier" : {
    "use" : "usual",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.858.2.1.67430.20190823110524.1.1"
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "34108-1",
      "display" : "Hoja de consulta no urgente"
    }]
  },
  "subject" : {
    "reference" : "Patient/hcen-paciente-gonzalez"
  },
  "encounter" : {
    "reference" : "Encounter/hcen-encuentro-traumatologia"
  },
  "date" : "2019-08-23T11:05:24-03:00",
  "author" : [{
    "reference" : "PractitionerRole/hcen-rol-traumatologia-sousa"
  }],
  "title" : "Consulta no urgente",
  "confidentiality" : "N",
  "custodian" : {
    "reference" : "Organization/hcen-organizacion-asse"
  },
  "section" : [{
    "title" : "Motivos de consulta",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "10154-3",
        "display" : "Motivo de consulta"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xml:lang=\"es-UY\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\"><p>Descripción del motivo de consulta: mialgia.</p></div>"
    },
    "entry" : [{
      "reference" : "Condition/hcen-motivo-consulta-mialgia"
    }]
  },
  {
    "title" : "Diagnósticos",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "11450-4",
        "display" : "Diagnostico"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xml:lang=\"es-UY\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\"><p>Desgarro muscular. Fecha de inicio: 22/08/2016. Estado del problema: problema no resuelto. Grado de certeza: confirmado.</p></div>"
    },
    "entry" : [{
      "reference" : "Condition/hcen-diagnostico-desgarro-muscular"
    }]
  },
  {
    "title" : "Procedimientos relevantes realizados",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "47519-4",
        "display" : "Procedimientos relevantes realizados"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xml:lang=\"es-UY\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\"><p>Vendaje de extremidad superior. Resultado del procedimiento: normal. Observaciones relevantes: paciente sedado durante el procedimiento.</p></div>"
    },
    "entry" : [{
      "reference" : "Procedure/hcen-procedimiento-vendaje"
    }]
  },
  {
    "title" : "Tratamiento no farmacológico realizado durante la asistencia",
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "258071000179109",
        "display" : "Tratamiento no farmacológico realizado durante la asistencia"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xml:lang=\"es-UY\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\"><p>Indicación/recomendación: administración de oxígeno.</p></div>"
    },
    "entry" : [{
      "reference" : "Procedure/hcen-procedimiento-oxigeno"
    }]
  },
  {
    "title" : "Tratamiento farmacológico realizado durante la asistencia",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "19011-6",
        "display" : "Tratamiento farmacológico realizado durante la asistencia"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xml:lang=\"es-UY\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\"><p>Fármaco: paracetamol 650 mg comprimido. Observaciones relevantes: se administra 1 comprimido.</p></div>"
    },
    "entry" : [{
      "reference" : "MedicationAdministration/hcen-med-admin-paracetamol"
    }]
  },
  {
    "title" : "Tratamiento no farmacológico indicado al final de la asistencia",
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "258081000179106",
        "display" : "Tratamiento no farmacológico indicado al final de la asistencia"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xml:lang=\"es-UY\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\"><p>Indicación/recomendación: hacer reposo durante las próximas 2 semanas.</p></div>"
    },
    "entry" : [{
      "reference" : "ServiceRequest/hcen-servicio-req-reposo"
    }]
  },
  {
    "title" : "Tratamiento farmacológico indicado al final de la asistencia",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "29305-0",
        "display" : "Tratamiento farmacológico indicado al final de la asistencia"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xml:lang=\"es-UY\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\"><p>Fármaco: 1 comprimido de paracetamol 650 mg comprimido. Vía de administración: vía oral. Cantidad: 1 comprimido. Frecuencia de administración: cada 8 horas. Momento de administración: tomar con alimentos. Duración: 5 días. Observaciones relevantes: suspender en caso de alguna reacción adversa.</p></div>"
    },
    "entry" : [{
      "reference" : "MedicationRequest/hcen-med-req-paracetamol"
    }]
  },
  {
    "title" : "Instrucciones de seguimiento",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "18776-5",
        "display" : "Instrucciones de seguimiento"
      }]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xml:lang=\"es-UY\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"es-UY\"><p>Fecha de próxima consulta: 02/09/2019. Próxima consulta: revisión a los 10 días. Referencia al alta: consulta de atención primaria.</p></div>"
    },
    "entry" : [{
      "reference" : "ServiceRequest/hcen-servicio-req-seguimiento"
    }]
  }]
}

```
