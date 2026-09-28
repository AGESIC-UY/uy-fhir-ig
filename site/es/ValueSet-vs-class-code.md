# EJE 1 — Tipo genérico de documento - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: EJE 1 — Tipo genérico de documento 

 
Tipo genérico de documento según la hoja ValueSets de la especificación nacional. 

 **References** 

* [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)
* [HCEN Consulta No Urgente](StructureDefinition-uy-consulta-no-urgente.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-class-code",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-class-code",
  "version" : "0.1.0",
  "name" : "VSclassCode",
  "title" : "EJE 1 — Tipo genérico de documento",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Tipo genérico de documento según la hoja ValueSets de la especificación nacional.",
  "copyright" : "Includes LOINC® content, copyright Regenstrief Institute, Inc. and the LOINC Committee. Available under the license at https://loinc.org/terms-of-use/.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "34098-4",
        "display" : "ateneo clínico"
      },
      {
        "code" : "51851-4",
        "display" : "documentación administrativa"
      },
      {
        "code" : "34133-9",
        "display" : "historia clínica previa escaneada"
      },
      {
        "code" : "82593-5",
        "display" : "historial de inmunizaciones"
      },
      {
        "code" : "34750-0",
        "display" : "hoja de anestesia"
      },
      {
        "code" : "34108-1",
        "display" : "hoja de consulta no urgente"
      },
      {
        "code" : "34111-5",
        "display" : "hoja de consulta urgente"
      },
      {
        "code" : "34848-2",
        "display" : "hoja de descripción operatoria"
      },
      {
        "code" : "18761-7",
        "display" : "hoja de traslado especializado"
      },
      {
        "code" : "11526-1",
        "display" : "informe de anatomía patológica"
      },
      {
        "code" : "18748-4",
        "display" : "informe de imagenología"
      },
      {
        "code" : "11502-2",
        "display" : "informe de laboratorio"
      },
      {
        "code" : "28570-0",
        "display" : "informe de procedimiento diagnóstico y/o terapéutico (no quirúrgico)"
      },
      {
        "code" : "18842-5",
        "display" : "resumen de egreso de paciente internado"
      },
      {
        "code" : "18842-6",
        "display" : "resumen de egreso de paciente internado"
      }]
    }]
  }
}

```
