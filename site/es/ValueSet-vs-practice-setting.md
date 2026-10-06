# EJE 3 — Servicio médico del documento - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: EJE 3 — Servicio médico del documento 

 **References** 

* [Perfil Document Reference HCEN](StructureDefinition-hcen-document-reference.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-practice-setting",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-practice-setting",
  "version" : "0.1.0",
  "name" : "VSpracticeSetting",
  "title" : "EJE 3 — Servicio médico del documento",
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
  "description" : "Servicio médico del documento según la hoja ValueSets de la especificación nacional.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "272341000179102",
        "display" : "comité de tumores"
      },
      {
        "code" : "272611000179109",
        "display" : "heart team"
      },
      {
        "code" : "711332004",
        "display" : "servicio de alergología"
      },
      {
        "code" : "310001007",
        "display" : "servicio de anestesia"
      },
      {
        "code" : "247971000179108",
        "display" : "servicio de atención al adolescente"
      },
      {
        "code" : "789718008",
        "display" : "servicio de cardiología"
      },
      {
        "code" : "789717003",
        "display" : "servicio de cardiología pediátrica"
      },
      {
        "code" : "310142007",
        "display" : "servicio de cirugía cardíaca"
      },
      {
        "code" : "310156009",
        "display" : "servicio de cirugía general"
      },
      {
        "code" : "788008002",
        "display" : "servicio de cirugía oral y maxilofacial"
      },
      {
        "code" : "310163009",
        "display" : "servicio de cirugía pediátrica"
      },
      {
        "code" : "310164003",
        "display" : "servicio de cirugía plástica"
      },
      {
        "code" : "310141000",
        "display" : "servicio de cirugía torácica"
      },
      {
        "code" : "310168000",
        "display" : "servicio de cirugía vascular"
      },
      {
        "code" : "4111000179109",
        "display" : "servicio de cosmetologia médica"
      },
      {
        "code" : "310073009",
        "display" : "servicio de cuidados paliativos"
      },
      {
        "code" : "272191000179108",
        "display" : "servicio de cuidados paliativos pediátricos"
      },
      {
        "code" : "700241009",
        "display" : "servicio de dermatología"
      },
      {
        "code" : "1280011000",
        "display" : "servicio de dermatología pediátrica"
      },
      {
        "code" : "243721000179102",
        "display" : "servicio de diabetología"
      },
      {
        "code" : "4471000179107",
        "display" : "servicio de diabetología pediátrica"
      },
      {
        "code" : "700434000",
        "display" : "servicio de endocrinología"
      },
      {
        "code" : "3761000175103",
        "display" : "servicio de endocrinología pediátrica"
      },
      {
        "code" : "708170008",
        "display" : "servicio de enfermería"
      },
      {
        "code" : "700436003",
        "display" : "servicio de farmacología clínica"
      },
      {
        "code" : "722140001",
        "display" : "servicio de fisioterapia"
      },
      {
        "code" : "310101009",
        "display" : "servicio de fonoaudiología"
      },
      {
        "code" : "310104001",
        "display" : "servicio de fonoaudiología pediátrica"
      },
      {
        "code" : "700433006",
        "display" : "servicio de gastroenterología"
      },
      {
        "code" : "3771000175106",
        "display" : "servicio de gastroenterología pediátrica"
      },
      {
        "code" : "1304105009",
        "display" : "servicio de genética"
      },
      {
        "code" : "3531000175102",
        "display" : "servicio de geriatría"
      },
      {
        "code" : "310060005",
        "display" : "servicio de ginecotocología"
      },
      {
        "code" : "708196005",
        "display" : "servicio de hematología"
      },
      {
        "code" : "897188002",
        "display" : "servicio de hematología pediátrica"
      },
      {
        "code" : "3831000179106",
        "display" : "servicio de hemato-oncología"
      },
      {
        "code" : "1343445000",
        "display" : "servicio de hemato-oncología pediátrica"
      },
      {
        "code" : "4531000179106",
        "display" : "servicio de hemoterapia y medicina transfusional"
      },
      {
        "code" : "23901000087101",
        "display" : "servicio de hepatología"
      },
      {
        "code" : "3861000179102",
        "display" : "servicio de infectología"
      },
      {
        "code" : "3781000175109",
        "display" : "servicio de infectología pediátrica"
      },
      {
        "code" : "708190004",
        "display" : "servicio de inmunología"
      },
      {
        "code" : "4291000179105",
        "display" : "servicio de internación domiciliaria"
      },
      {
        "code" : "259861000179102",
        "display" : "servicio de mastología"
      },
      {
        "code" : "2351000175106",
        "display" : "servicio de medicina del deporte"
      },
      {
        "code" : "225491000179106",
        "display" : "servicio de medicina familiar y comunitaria"
      },
      {
        "code" : "700232004",
        "display" : "servicio de medicina general"
      },
      {
        "code" : "310032008",
        "display" : "servicio de medicina intensiva"
      },
      {
        "code" : "741073001",
        "display" : "servicio de medicina intensiva neonatal"
      },
      {
        "code" : "3901000179108",
        "display" : "servicio de medicina intensiva neonatal y pediátrica"
      },
      {
        "code" : "310034009",
        "display" : "servicio de medicina intensiva pediátrica"
      },
      {
        "code" : "792848000",
        "display" : "servicio de medicina interna"
      },
      {
        "code" : "3921000179100",
        "display" : "servicio de medicina interna pediátrica"
      },
      {
        "code" : "722393008",
        "display" : "servicio de medicina legal"
      },
      {
        "code" : "278032008",
        "display" : "servicio de medicina preventiva"
      },
      {
        "code" : "788003006",
        "display" : "servicio de nefrología"
      },
      {
        "code" : "3791000175107",
        "display" : "servicio de nefrología pediátrica"
      },
      {
        "code" : "3961000179107",
        "display" : "servicio de neonatología"
      },
      {
        "code" : "225421000179108",
        "display" : "servicio de neumología"
      },
      {
        "code" : "3981000179104",
        "display" : "servicio de neumología pediátrica"
      },
      {
        "code" : "310159002",
        "display" : "servicio de neurocirugía"
      },
      {
        "code" : "830149003",
        "display" : "servicio de neurofisiología clínica"
      },
      {
        "code" : "788005004",
        "display" : "servicio de neurología"
      },
      {
        "code" : "310068003",
        "display" : "servicio de neuropediatría"
      },
      {
        "code" : "722176000",
        "display" : "servicio de odontología"
      },
      {
        "code" : "4031000179101",
        "display" : "servicio de odontología pediátrica"
      },
      {
        "code" : "310160007",
        "display" : "servicio de oftalmología"
      },
      {
        "code" : "4451000179104",
        "display" : "servicio de oftalmología pediátrica"
      },
      {
        "code" : "262741000179109",
        "display" : "servicio de oncofertilidad"
      },
      {
        "code" : "310022001",
        "display" : "servicio de oncología médica"
      },
      {
        "code" : "788123009",
        "display" : "servicio de oncología radioterápica"
      },
      {
        "code" : "310149003",
        "display" : "servicio de otorrinolaringología"
      },
      {
        "code" : "789716007",
        "display" : "servicio de otorrinolaringología pediátrica"
      },
      {
        "code" : "231981000179101",
        "display" : "servicio de parasitología y micología"
      },
      {
        "code" : "310066004",
        "display" : "servicio de pediatría"
      },
      {
        "code" : "310087009",
        "display" : "servicio de podología"
      },
      {
        "code" : "4051000179107",
        "display" : "servicio de podología para diabéticos"
      },
      {
        "code" : "310123008",
        "display" : "servicio de psicología"
      },
      {
        "code" : "227591000179101",
        "display" : "servicio de psicología pediátrica"
      },
      {
        "code" : "4061000179105",
        "display" : "servicio de psicomotricidad"
      },
      {
        "code" : "260931000179104",
        "display" : "servicio de psicopedagogía"
      },
      {
        "code" : "310116007",
        "display" : "servicio de psiquiatría"
      },
      {
        "code" : "221000179108",
        "display" : "servicio de psiquiatría adolescente"
      },
      {
        "code" : "241000179102",
        "display" : "servicio de psiquiatría pediátrica"
      },
      {
        "code" : "773558007",
        "display" : "servicio de rehabilitación y medicina física"
      },
      {
        "code" : "3621000175101",
        "display" : "servicio de reumatología"
      },
      {
        "code" : "789714005",
        "display" : "servicio de reumatología pediátrica"
      },
      {
        "code" : "270271000179102",
        "display" : "servicio de salud ocupacional"
      },
      {
        "code" : "270401000179108",
        "display" : "servicio de salud sexual y reproductiva"
      },
      {
        "code" : "708191000",
        "display" : "servicio de toxicología"
      },
      {
        "code" : "310071006",
        "display" : "servicio de tratamiento del dolor"
      },
      {
        "code" : "4101000179107",
        "display" : "servicio de traumatología y ortopedia"
      },
      {
        "code" : "249221000179107",
        "display" : "servicio de traumatología y ortopedia pediátrica"
      },
      {
        "code" : "310167005",
        "display" : "servicio de urología"
      },
      {
        "code" : "1231394008",
        "display" : "servicio de urología pediátrica"
      },
      {
        "code" : "259771000179104",
        "display" : "servicio de violencia de género"
      },
      {
        "code" : "261781000179106",
        "display" : "unidad de accidentes cerebrovasculares"
      },
      {
        "code" : "261771000179109",
        "display" : "unidad de cuidados cardiológicos"
      },
      {
        "code" : "261801000179107",
        "display" : "unidad de cuidados neuroquirúrgicos"
      },
      {
        "code" : "261791000179108",
        "display" : "unidad de quemados"
      },
      {
        "code" : "262431000179108",
        "display" : "unidad de quemados y rehabilitación pediátrica"
      },
      {
        "code" : "261811000179109",
        "display" : "unidad de trasplante de médula ósea"
      },
      {
        "code" : "261821000179104",
        "display" : "unidad de trasplante de órgano sólido"
      },
      {
        "code" : "227541000179105",
        "display" : "servicio de administración sanitaria"
      },
      {
        "code" : "4151000179108",
        "display" : "servicio de vacunaciones"
      },
      {
        "code" : "278331000179107",
        "display" : "comité de recepción en salud mental"
      },
      {
        "code" : "408458006",
        "display" : "equipo multidisciplinario de especialistas"
      },
      {
        "code" : "254561000179104",
        "display" : "servicio de acupuntura"
      },
      {
        "code" : "371000179103",
        "display" : "servicio de andrología"
      },
      {
        "code" : "246571000179101",
        "display" : "servicio de cesación de tabaquismo"
      },
      {
        "code" : "733459009",
        "display" : "servicio de rehabilitación cardíaca"
      },
      {
        "code" : "225501000179101",
        "display" : "servicio social"
      },
      {
        "code" : "310029005",
        "display" : "servicio de atención domiciliaria"
      },
      {
        "code" : "4871000179105",
        "display" : "servicio de emergencia centralizada"
      },
      {
        "code" : "222671000179101",
        "display" : "servicio de emergencia centralizada pediátrica"
      },
      {
        "code" : "4881000179107",
        "display" : "servicio de emergencia no centralizada"
      },
      {
        "code" : "227561000179106",
        "display" : "servicio de emergencia no centralizada pediátrica"
      },
      {
        "code" : "708183009",
        "display" : "servicio de anatomía patológica"
      },
      {
        "code" : "3851000179100",
        "display" : "servicio de imagenología"
      },
      {
        "code" : "310169008",
        "display" : "servicio de ecografía"
      },
      {
        "code" : "310125001",
        "display" : "servicio de radiología"
      },
      {
        "code" : "788009005",
        "display" : "servicio de medicina nuclear"
      },
      {
        "code" : "310127009",
        "display" : "servicio de resonancia magnética nuclear"
      },
      {
        "code" : "310128004",
        "display" : "servicio de tomografía computarizada"
      },
      {
        "code" : "708179009",
        "display" : "servicio de biología molecular"
      },
      {
        "code" : "310076001",
        "display" : "servicio de bioquímica clínica"
      },
      {
        "code" : "310200001",
        "display" : "servicio de citología"
      },
      {
        "code" : "3881000179105",
        "display" : "servicio de laboratorio"
      },
      {
        "code" : "788006003",
        "display" : "servicio de laboratorio de genética"
      },
      {
        "code" : "310078000",
        "display" : "servicio de microbiología médica"
      },
      {
        "code" : "278891000179102",
        "display" : "servicio de hospital de día"
      },
      {
        "code" : "310030000",
        "display" : "servicio de endoscopía"
      },
      {
        "code" : "310023006",
        "display" : "servicio de radioterapia"
      },
      {
        "code" : "310024000",
        "display" : "servicio de colposcopía"
      },
      {
        "code" : "259901000179108",
        "display" : "servicio de neumocardiología"
      },
      {
        "code" : "261761000179103",
        "display" : "servicio de cuidados básicos"
      }]
    }]
  }
}

```
