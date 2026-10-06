# EJE 2 — Tipo detallado de documento - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: EJE 2 — Tipo detallado de documento 

 **References** 

* [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)
* [HCEN Evento Clínico](StructureDefinition-hcen-encounter.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-type-code",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-type-code",
  "version" : "0.1.0",
  "name" : "VStypeCode",
  "title" : "EJE 2 — Tipo detallado de documento",
  "status" : "draft",
  "date" : "2026-10-06T01:23:13-03:00",
  "publisher" : "AGESIC",
  "contact" : [{
    "name" : "AGESIC",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.gub.uy/agencia-gobierno-electronico-sociedad-informacion-conocimiento/salud-digital"
    }]
  }],
  "description" : "Tipo detallado de documento según la hoja ValueSets de la especificación nacional.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "271301000179106",
        "display" : "informe de reunión interdisciplinaria del equipo asistencial"
      },
      {
        "code" : "232911000179100",
        "display" : "datos del certificado de defunción"
      },
      {
        "code" : "221331000179102",
        "display" : "datos del certificado de nacido vivo"
      },
      {
        "code" : "7081000179105",
        "display" : "historia clínica previa escaneada"
      },
      {
        "code" : "41000179103",
        "display" : "historial de inmunizaciones"
      },
      {
        "code" : "270081000179106",
        "display" : "hoja de anestesia"
      },
      {
        "code" : "6821000179104",
        "display" : "hoja de consulta no urgente centralizada - policlínica"
      },
      {
        "code" : "5481000179108",
        "display" : "hoja de consulta no urgente no centralizada"
      },
      {
        "code" : "4181000179103",
        "display" : "registro de enfermería de paciente en policlínica"
      },
      {
        "code" : "259531000179109",
        "display" : "registro de consulta de telemedicina"
      },
      {
        "code" : "5461000179100",
        "display" : "hoja de consulta urgente centralizada"
      },
      {
        "code" : "5471000179106",
        "display" : "hoja de consulta urgente no centralizada"
      },
      {
        "code" : "371526002",
        "display" : "informe de descripción operatoria"
      },
      {
        "code" : "230551000179106",
        "display" : "hoja de traslado especializado"
      },
      {
        "code" : "371528001",
        "display" : "informe de anatomía patológica"
      },
      {
        "code" : "6431000179100",
        "display" : "informe de papanicolaou"
      },
      {
        "code" : "258951000179102",
        "display" : "informe de técnicas auxiliares de anatomía patológica"
      },
      {
        "code" : "4211000179102",
        "display" : "informe de densitometría ósea"
      },
      {
        "code" : "4221000179107",
        "display" : "informe de ecografía"
      },
      {
        "code" : "227841000179108",
        "display" : "informe de ecografía doppler"
      },
      {
        "code" : "4231000179109",
        "display" : "informe de mamografía"
      },
      {
        "code" : "4271000179106",
        "display" : "informe de medicina nuclear"
      },
      {
        "code" : "371527006",
        "display" : "informe de radiología convencional"
      },
      {
        "code" : "4251000179103",
        "display" : "informe de resonancia magnética nuclear"
      },
      {
        "code" : "4261000179100",
        "display" : "informe de tomografía axial computarizada"
      },
      {
        "code" : "235931000179102",
        "display" : "informe de tomografía por emisión de positrones"
      },
      {
        "code" : "4241000179101",
        "display" : "informe de laboratorio"
      },
      {
        "code" : "269071000179107",
        "display" : "Informe de laboratorio de analítica"
      },
      {
        "code" : "4341000179107",
        "display" : "informe de microbiología"
      },
      {
        "code" : "271121000179101",
        "display" : "informe de test de HPV"
      },
      {
        "code" : "5531000179105",
        "display" : "hoja de enfermería"
      },
      {
        "code" : "215791000179105",
        "display" : "informe de electrofisiología"
      },
      {
        "code" : "246961000179100",
        "display" : "informe de endoscopía"
      },
      {
        "code" : "261911000179103",
        "display" : "informe de estudio cardiológico invasivo"
      },
      {
        "code" : "261901000179100",
        "display" : "informe de estudio cardiológico no invasivo"
      },
      {
        "code" : "215801000179109",
        "display" : "informe de fonoaudiología"
      },
      {
        "code" : "6791000179108",
        "display" : "informe de neurofisiología clínica"
      },
      {
        "code" : "261921000179108",
        "display" : "informe de procedimiento de radioterapia"
      },
      {
        "code" : "5501000179100",
        "display" : "informe de procedimiento diagnóstico y/o terapéutico (no quirúrgico)"
      },
      {
        "code" : "271171000179102",
        "display" : "informe neuropsicológico"
      },
      {
        "code" : "256691000179104",
        "display" : "resumen de egreso de internación domiciliaria"
      },
      {
        "code" : "373942005",
        "display" : "resumen de egreso de paciente internado"
      },
      {
        "code" : "261721000179105",
        "display" : "resumen de egreso en internación de cuidados básicos"
      },
      {
        "code" : "261751000179101",
        "display" : "resumen de egreso en internación de cuidados intensivos"
      },
      {
        "code" : "261741000179104",
        "display" : "resumen de egreso en internación de cuidados intermedios"
      },
      {
        "code" : "261731000179107",
        "display" : "resumen de egreso en internación de cuidados moderados"
      }]
    }]
  }
}

```
