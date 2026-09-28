# Conjunto de Valores Rol del Profesional - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Rol del Profesional 

 
Referencias simples de roles y especialidades en salud (metadato fundacional) para PractitionerRole.code. 

 **References** 

* [Perfil Rol del Profesional de Salud para Uruguay](StructureDefinition-uy-practitioner-role.md)

### Logical Definition (CLD)

 

### Expansión

No Expansion for this valueset (not supported by Publication Tooling)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-rol-profesional",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-rol-profesional",
  "version" : "0.1.0",
  "name" : "RolProfesional",
  "title" : "Conjunto de Valores Rol del Profesional",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Referencias simples de roles y especialidades en salud (metadato fundacional) para PractitionerRole.code.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "3430008",
        "display" : "especialista en oncología radioterápica"
      },
      {
        "code" : "4162009",
        "display" : "auxiliar de odontología"
      },
      {
        "code" : "5275007",
        "display" : "auxiliar de enfermería"
      },
      {
        "code" : "6816002",
        "display" : "enfermera especializada"
      },
      {
        "code" : "8724009",
        "display" : "cirujano plástico"
      },
      {
        "code" : "11661002",
        "display" : "neuropatólogo"
      },
      {
        "code" : "11911009",
        "display" : "nefrólogo"
      },
      {
        "code" : "11935004",
        "display" : "obstetra"
      },
      {
        "code" : "14698002",
        "display" : "microbiólogo médico"
      },
      {
        "code" : "17561000",
        "display" : "cardiólogo"
      },
      {
        "code" : "18803008",
        "display" : "dermatólogo médico quirúrgico"
      },
      {
        "code" : "19244007",
        "display" : "especialista en gerodontología"
      },
      {
        "code" : "22983004",
        "display" : "cirujano torácico"
      },
      {
        "code" : "24430003",
        "display" : "fisiatra"
      },
      {
        "code" : "24590004",
        "display" : "urólogo"
      },
      {
        "code" : "26042002",
        "display" : "higienista dental"
      },
      {
        "code" : "28411006",
        "display" : "neonatólogo"
      },
      {
        "code" : "28544002",
        "display" : "licenciado en bioquímica"
      },
      {
        "code" : "31641003",
        "display" : "farmacólogo"
      },
      {
        "code" : "35513000",
        "display" : "bioquímico"
      },
      {
        "code" : "36682004",
        "display" : "fisioterapeuta"
      },
      {
        "code" : "39677007",
        "display" : "especialista en medicina interna"
      },
      {
        "code" : "40204001",
        "display" : "hematólogo"
      },
      {
        "code" : "41672002",
        "display" : "neumonólogo"
      },
      {
        "code" : "41904004",
        "display" : "técnico radiólogo"
      },
      {
        "code" : "44652006",
        "display" : "auxiliar farmacéutico"
      },
      {
        "code" : "45440000",
        "display" : "reumatólogo"
      },
      {
        "code" : "45544007",
        "display" : "neurocirujano"
      },
      {
        "code" : "45956004",
        "display" : "especialista en sanidad e higiene pública"
      },
      {
        "code" : "46255001",
        "display" : "farmacéutico"
      },
      {
        "code" : "49993003",
        "display" : "cirujano oral"
      },
      {
        "code" : "50149000",
        "display" : "endodoncista"
      },
      {
        "code" : "56397003",
        "display" : "neurólogo"
      },
      {
        "code" : "56466003",
        "display" : "médico de salud pública"
      },
      {
        "code" : "56545009",
        "display" : "cirujano cardiovascular"
      },
      {
        "code" : "59058001",
        "display" : "médico general"
      },
      {
        "code" : "59169001",
        "display" : "técnico en ortopedia"
      },
      {
        "code" : "59944000",
        "display" : "licenciado en psicología"
      },
      {
        "code" : "61345009",
        "display" : "otorrinolaringólogo"
      },
      {
        "code" : "61894003",
        "display" : "endocrinólogo"
      },
      {
        "code" : "62247001",
        "display" : "médico especialista en medicina familiar"
      },
      {
        "code" : "63098009",
        "display" : "inmunólogo clínico"
      },
      {
        "code" : "63279000",
        "display" : "licenciado en química"
      },
      {
        "code" : "66862007",
        "display" : "especialista en imagenología"
      },
      {
        "code" : "68950000",
        "display" : "prostodoncista"
      },
      {
        "code" : "71838004",
        "display" : "gastroenterólogo"
      },
      {
        "code" : "76899008",
        "display" : "infectólogo"
      },
      {
        "code" : "78703002",
        "display" : "cirujano general"
      },
      {
        "code" : "80584001",
        "display" : "psiquiatra"
      },
      {
        "code" : "80933006",
        "display" : "especialista en medicina nuclear"
      },
      {
        "code" : "81464008",
        "display" : "patólogo clínico"
      },
      {
        "code" : "82296001",
        "display" : "pediatra"
      },
      {
        "code" : "83273008",
        "display" : "anatomopatólogo"
      },
      {
        "code" : "83685006",
        "display" : "ginecólogo"
      },
      {
        "code" : "88189002",
        "display" : "anestesiólogo"
      },
      {
        "code" : "90201008",
        "display" : "odontólogo pediátrico"
      },
      {
        "code" : "90655003",
        "display" : "especialista en geriatría"
      },
      {
        "code" : "106256002",
        "display" : "químico"
      },
      {
        "code" : "106265009",
        "display" : "ingeniero especialista en química"
      },
      {
        "code" : "106292003",
        "display" : "licenciado en enfermería"
      },
      {
        "code" : "106328005",
        "display" : "licenciado en trabajo social"
      },
      {
        "code" : "106437009",
        "display" : "técnico operador de alimentos"
      },
      {
        "code" : "158973009",
        "display" : "especialista en salud ocupacional"
      },
      {
        "code" : "158979008",
        "display" : "odontólogo"
      },
      {
        "code" : "159010009",
        "display" : "farmacéutico de hospital"
      },
      {
        "code" : "159026005",
        "display" : "fonoaudiólogo"
      },
      {
        "code" : "159033005",
        "display" : "licenciado en nutrición"
      },
      {
        "code" : "159036002",
        "display" : "auxiliar de electrocardiografía"
      },
      {
        "code" : "159041005",
        "display" : "practicante de medicina"
      },
      {
        "code" : "159135001",
        "display" : "parasitólogo"
      },
      {
        "code" : "159150005",
        "display" : "bachiller en química"
      },
      {
        "code" : "224540001",
        "display" : "enfermera comunitaria"
      },
      {
        "code" : "224543004",
        "display" : "enfermera especializada en atención de diabéticos"
      },
      {
        "code" : "224545006",
        "display" : "enfermera geriátrica"
      },
      {
        "code" : "224549000",
        "display" : "enfermera neonatal"
      },
      {
        "code" : "224550000",
        "display" : "enfermera de neurología"
      },
      {
        "code" : "224552008",
        "display" : "enfermera de oncología"
      },
      {
        "code" : "224562001",
        "display" : "enfermera de pediatría"
      },
      {
        "code" : "224563006",
        "display" : "enfermera a cargo del área de salud mental"
      },
      {
        "code" : "224588003",
        "display" : "psicoterapeuta"
      },
      {
        "code" : "224603001",
        "display" : "podólogo"
      },
      {
        "code" : "236300002",
        "display" : "ingeniero electricista"
      },
      {
        "code" : "236301003",
        "display" : "ingeniero en informática"
      },
      {
        "code" : "265939002",
        "display" : "protesista dental"
      },
      {
        "code" : "265993004",
        "display" : "manicura/podólogo"
      },
      {
        "code" : "309294001",
        "display" : "médico emergentólogo"
      },
      {
        "code" : "309295000",
        "display" : "oncólogo clínico"
      },
      {
        "code" : "309330006",
        "display" : "cardiólogo pediátrico"
      },
      {
        "code" : "309331005",
        "display" : "endocrinólogo pediátrico"
      },
      {
        "code" : "309332003",
        "display" : "gastroenterólogo pediátrico"
      },
      {
        "code" : "309333008",
        "display" : "nefrólogo pediátrico"
      },
      {
        "code" : "309334002",
        "display" : "neurólogo pediátrico"
      },
      {
        "code" : "309338004",
        "display" : "especialista en terapia intensiva"
      },
      {
        "code" : "309340009",
        "display" : "especialista en terapia intensiva pediátrica"
      },
      {
        "code" : "309343006",
        "display" : "médico"
      },
      {
        "code" : "309348002",
        "display" : "neurofisiólogo clínico"
      },
      {
        "code" : "309350005",
        "display" : "diabetólogo"
      },
      {
        "code" : "309359006",
        "display" : "médico de cuidados paliativos"
      },
      {
        "code" : "309360001",
        "display" : "rehabilitador físico"
      },
      {
        "code" : "309361002",
        "display" : "psiquiatra de adolescentes y niños"
      },
      {
        "code" : "309368008",
        "display" : "cirujano especialista en mama"
      },
      {
        "code" : "309371000",
        "display" : "especialista en cirugía cardíaca"
      },
      {
        "code" : "309383003",
        "display" : "cirujano pediátrico"
      },
      {
        "code" : "309385005",
        "display" : "cirujano especialista en trasplantes"
      },
      {
        "code" : "309388007",
        "display" : "cirujano vascular"
      },
      {
        "code" : "309460000",
        "display" : "odontólogo restaurador"
      },
      {
        "code" : "310193003",
        "display" : "médico forense"
      },
      {
        "code" : "310512001",
        "display" : "médico oncólogo"
      },
      {
        "code" : "386605000",
        "display" : "laboratorista especializado en citología y colpocitología"
      },
      {
        "code" : "387619007",
        "display" : "óptico"
      },
      {
        "code" : "404940000",
        "display" : "técnico en fisioterapia"
      },
      {
        "code" : "405278004",
        "display" : "enfermera matriculada especializada en anestesia"
      },
      {
        "code" : "415075003",
        "display" : "enfermera de atención perioperatoria"
      },
      {
        "code" : "422234006",
        "display" : "especialista en oftalmología"
      },
      {
        "code" : "721940004",
        "display" : "especialista en medicina legal"
      },
      {
        "code" : "1172950003",
        "display" : "masoterapeuta"
      },
      {
        "code" : "1259943001",
        "display" : "técnico en anatomía patológica"
      },
      {
        "code" : "258671000179104",
        "display" : "licenciado en biotecnología"
      },
      {
        "code" : "10431000179101",
        "display" : "especialista en enfermería en nefrología"
      },
      {
        "code" : "5731000179102",
        "display" : "especialista en bases inmunogenéticas de los trasplantes"
      },
      {
        "code" : "6951000179104",
        "display" : "técnico en oftalmología"
      },
      {
        "code" : "10721000179106",
        "display" : "tatuador y punzador"
      },
      {
        "code" : "5861000179103",
        "display" : "especialista en neurodesarrollo"
      },
      {
        "code" : "10301000179102",
        "display" : "especialista en enfermería en cirugía cardiaca"
      },
      {
        "code" : "258701000179100",
        "display" : "maestría en políticas de infancia y adolescencia para la prevención de las fármacodependencias"
      },
      {
        "code" : "10531000179100",
        "display" : "ingeniero industrial mecánico"
      },
      {
        "code" : "6761000179103",
        "display" : "licenciado en terapia ocupacional"
      },
      {
        "code" : "10241000179105",
        "display" : "doctor en ciencias médicas"
      },
      {
        "code" : "5671000179108",
        "display" : "especialista en emergentología pediátrica"
      },
      {
        "code" : "10371000179109",
        "display" : "especialista en enfermería en emergencia"
      },
      {
        "code" : "7011000179104",
        "display" : "técnico en promoción de salud y prevención de enfermedades"
      },
      {
        "code" : "10661000179108",
        "display" : "magíster en nutrición"
      },
      {
        "code" : "10111000179102",
        "display" : "auxiliar de enfermería adiestrado en block quirúrgico e instrumentación"
      },
      {
        "code" : "6891000179101",
        "display" : "licenciado en psicopedagogía"
      },
      {
        "code" : "10471000179104",
        "display" : "especialista en enfermería en quemados"
      },
      {
        "code" : "5831000179107",
        "display" : "especialista en medicina rural"
      },
      {
        "code" : "258771000179107",
        "display" : "especialista en derechos de la infancia y políticas publicas"
      },
      {
        "code" : "258801000179105",
        "display" : "técnico en acompañamiento terapéutico"
      },
      {
        "code" : "5701000179107",
        "display" : "especialista en medicina del deporte"
      },
      {
        "code" : "10401000179106",
        "display" : "especialista en enfermería en infecciones intrahospitalarias"
      },
      {
        "code" : "258641000179109",
        "display" : "especialista en psicoterapia en los servicios de salud"
      },
      {
        "code" : "10181000179108",
        "display" : "auxiliar de higiene ambiental"
      },
      {
        "code" : "10341000179104",
        "display" : "especialista en enfermería en cuidados intensivos del adulto"
      },
      {
        "code" : "5771000179100",
        "display" : "especialista en epidemiología"
      },
      {
        "code" : "10211000179109",
        "display" : "auxiliar de servicio, ayudante de cocina y tisanería"
      },
      {
        "code" : "6731000179107",
        "display" : "licenciado en neumocardiología"
      },
      {
        "code" : "258741000179102",
        "display" : "práctico laboratorista odontológico"
      },
      {
        "code" : "10761000179104",
        "display" : "especialista en enfermería en hematooncología"
      },
      {
        "code" : "6861000179106",
        "display" : "técnico en radioisótopos"
      },
      {
        "code" : "5931000179104",
        "display" : "especialista en trasplante de progenitores hematopoyéticos"
      },
      {
        "code" : "10631000179104",
        "display" : "magíster en epidemiología"
      },
      {
        "code" : "10281000179103",
        "display" : "doctorado en farmacia"
      },
      {
        "code" : "10151000179103",
        "display" : "auxiliar de enfermería con extensión materno infantil"
      },
      {
        "code" : "10571000179103",
        "display" : "magíster en atención de salud en primer nivel"
      },
      {
        "code" : "7051000179100",
        "display" : "técnico en neurofisiología clínica"
      },
      {
        "code" : "5801000179102",
        "display" : "especialista en gerontopsicomotricidad"
      },
      {
        "code" : "10441000179109",
        "display" : "especialista en enfermería en neumología"
      },
      {
        "code" : "258611000179108",
        "display" : "auxiliar de enfermería rural"
      },
      {
        "code" : "10091000179106",
        "display" : "auxiliar de anatomía patológica y autopsista"
      },
      {
        "code" : "258711000179103",
        "display" : "magister en genética y biología molecular"
      },
      {
        "code" : "5871000179109",
        "display" : "especialista en nutrición en enfermedades crónicas no transmisibles"
      },
      {
        "code" : "10311000179100",
        "display" : "especialista en enfermería en cirugía cardíaca pediátrica"
      },
      {
        "code" : "10601000179109",
        "display" : "magíster en ciencias médicas"
      },
      {
        "code" : "10731000179108",
        "display" : "odontólogo especialista en odontología legal"
      },
      {
        "code" : "6961000179101",
        "display" : "tecnólogo en radioterapia"
      },
      {
        "code" : "5901000179109",
        "display" : "especialista en toxicología"
      },
      {
        "code" : "6831000179102",
        "display" : "técnico en fonoaudiología"
      },
      {
        "code" : "5741000179105",
        "display" : "especialista en ecografía gineco obstétrica"
      },
      {
        "code" : "6931000179105",
        "display" : "histotecnólogo"
      },
      {
        "code" : "258681000179102",
        "display" : "licenciado en ciencias biológicas"
      },
      {
        "code" : "6771000179109",
        "display" : "técnico en salud ocupacional"
      },
      {
        "code" : "10121000179107",
        "display" : "auxiliar de enfermería adiestrado en cuidados intensivos en adultos"
      },
      {
        "code" : "5841000179104",
        "display" : "especialista en multitejidos para trasplantes"
      },
      {
        "code" : "10381000179106",
        "display" : "especialista en enfermería en emergencia pediátrica"
      },
      {
        "code" : "7021000179109",
        "display" : "técnico en psicología infantil"
      },
      {
        "code" : "10411000179108",
        "display" : "especialista en enfermería en hematooncología pediátrica"
      },
      {
        "code" : "10541000179108",
        "display" : "ingeniero industrial con opción electrónica"
      },
      {
        "code" : "10671000179102",
        "display" : "magíster en políticas y gestión de la salud"
      },
      {
        "code" : "5681000179105",
        "display" : "especialista en dermatología pediátrica"
      },
      {
        "code" : "258781000179109",
        "display" : "laboratorista en odontologia"
      },
      {
        "code" : "258651000179107",
        "display" : "especialista en psicoterapia psicoanalítica"
      },
      {
        "code" : "10251000179108",
        "display" : "doctor en ciencias veterinarias"
      },
      {
        "code" : "10351000179101",
        "display" : "especialista en enfermería en diálisis"
      },
      {
        "code" : "258811000179107",
        "display" : "auxiliar de terapia ocupacional psiquiátrica"
      },
      {
        "code" : "224891000179105",
        "display" : "especialista en parasitología y micología médica"
      },
      {
        "code" : "10191000179105",
        "display" : "auxiliar de laboratorio clínico"
      },
      {
        "code" : "10481000179102",
        "display" : "especialista en enfermería estomatoterapéutica"
      },
      {
        "code" : "10701000179103",
        "display" : "magíster en salud mental"
      },
      {
        "code" : "10641000179107",
        "display" : "magíster en farmacología clínica"
      },
      {
        "code" : "5811000179100",
        "display" : "especialista en hemoterapia"
      },
      {
        "code" : "10511000179107",
        "display" : "ingeniero en electrónica"
      },
      {
        "code" : "6871000179100",
        "display" : "licenciado en imagenología"
      },
      {
        "code" : "258591000179101",
        "display" : "auxiliar de enfermería con extensión en enfermería sanitaria"
      },
      {
        "code" : "258621000179103",
        "display" : "médico especialista en coordinación de trasplantes"
      },
      {
        "code" : "5781000179103",
        "display" : "especialista en genética médica de adultos"
      },
      {
        "code" : "258751000179104",
        "display" : "profundización en aparatos de yeso"
      },
      {
        "code" : "6901000179100",
        "display" : "tecnólogo en cosmetología médica"
      },
      {
        "code" : "6741000179104",
        "display" : "licenciado en neurofisiología clínica"
      },
      {
        "code" : "10221000179104",
        "display" : "auxiliar dental"
      },
      {
        "code" : "10321000179105",
        "display" : "especialista en enfermería en cirugía pediátrica"
      },
      {
        "code" : "10451000179107",
        "display" : "especialista en enfermería en neurocirugía"
      },
      {
        "code" : "10581000179101",
        "display" : "magíster en biotecnología"
      },
      {
        "code" : "5881000179106",
        "display" : "especialista en ortopedia y ortodoncia maxilo-facial"
      },
      {
        "code" : "258691000179100",
        "display" : "licenciado en ingeniería técnica química industrial"
      },
      {
        "code" : "10161000179100",
        "display" : "auxiliar de enfermería en centro quirúrgico e instrumentación"
      },
      {
        "code" : "6971000179107",
        "display" : "técnico en reeducación psicomotríz"
      },
      {
        "code" : "219341000179103",
        "display" : "licenciado en oftalmología"
      },
      {
        "code" : "10741000179100",
        "display" : "especialista en implantología oral"
      },
      {
        "code" : "10291000179101",
        "display" : "especialista en enfermería en cardiología"
      },
      {
        "code" : "258721000179108",
        "display" : "master en medicina familiar y comunitaria"
      },
      {
        "code" : "5751000179108",
        "display" : "especialista en economía de la salud"
      },
      {
        "code" : "10611000179106",
        "display" : "magíster en derechos de la infancia y políticas públicas"
      },
      {
        "code" : "10391000179108",
        "display" : "especialista en enfermería en gineco-obstetricia"
      },
      {
        "code" : "5911000179106",
        "display" : "especialista en urología pediátrica"
      },
      {
        "code" : "6711000179100",
        "display" : "licenciado en instrumentación quirúrgica"
      },
      {
        "code" : "10681000179100",
        "display" : "magíster en psicología clínica"
      },
      {
        "code" : "6841000179105",
        "display" : "técnico en hemoterapia"
      },
      {
        "code" : "10261000179106",
        "display" : "doctor en química"
      },
      {
        "code" : "243881000179109",
        "display" : "químico farmacéutico"
      },
      {
        "code" : "6941000179102",
        "display" : "técnico en laboratorio clínico"
      },
      {
        "code" : "258661000179105",
        "display" : "licenciado en biología humana"
      },
      {
        "code" : "10131000179109",
        "display" : "auxiliar de enfermería adiestrado en cuidados intensivos pediátricos"
      },
      {
        "code" : "5691000179107",
        "display" : "especialista en infectología pediátrica"
      },
      {
        "code" : "10421000179103",
        "display" : "especialista en enfermería maternoinfantil"
      },
      {
        "code" : "5851000179101",
        "display" : "especialista en neumología pediátrica"
      },
      {
        "code" : "5721000179104",
        "display" : "especialista en alergología"
      },
      {
        "code" : "10711000179101",
        "display" : "magíster en trabajo social"
      },
      {
        "code" : "258791000179106",
        "display" : "especialista en políticas de infancia y adolescencia para la prevención de las farmacodependencias"
      },
      {
        "code" : "6881000179103",
        "display" : "licenciado en psicomotricidad"
      },
      {
        "code" : "10651000179105",
        "display" : "magíster en genética humana"
      },
      {
        "code" : "6041000179101",
        "display" : "auditor en salud"
      },
      {
        "code" : "5791000179101",
        "display" : "especialista en genética médica de niños"
      },
      {
        "code" : "10491000179100",
        "display" : "ingeniero alimentario"
      },
      {
        "code" : "10231000179102",
        "display" : "doctor en ciencias biológicas"
      },
      {
        "code" : "10361000179103",
        "display" : "especialista en enfermería en diálisis pediátrica"
      },
      {
        "code" : "6751000179101",
        "display" : "licenciado en registros médicos"
      },
      {
        "code" : "10101000179104",
        "display" : "auxiliar de educación para la salud"
      },
      {
        "code" : "258631000179101",
        "display" : "especialista en enfermería en cuidados intermedios"
      },
      {
        "code" : "258761000179101",
        "display" : "especialiista en psicología sistémica y familias"
      },
      {
        "code" : "7001000179101",
        "display" : "técnico instrumentista quirúrgico"
      },
      {
        "code" : "5761000179106",
        "display" : "especialista en endoscopia digestiva"
      },
      {
        "code" : "10751000179102",
        "display" : "especialista de primer grado en cirugía maxilofacial"
      },
      {
        "code" : "10621000179101",
        "display" : "magíster en educación y psicología"
      },
      {
        "code" : "6691000179102",
        "display" : "licenciado en física médica"
      },
      {
        "code" : "10201000179107",
        "display" : "auxiliar de radiología"
      },
      {
        "code" : "10461000179105",
        "display" : "especialista en enfermería en ortopedia y traumatología"
      },
      {
        "code" : "6981000179109",
        "display" : "tecnólogo en registros médicos"
      },
      {
        "code" : "6721000179105",
        "display" : "licenciado en laboratorio clínico"
      },
      {
        "code" : "6851000179108",
        "display" : "técnico en neumocardiología"
      },
      {
        "code" : "10171000179106",
        "display" : "auxiliar de estadísticas de salud y registros médicos"
      },
      {
        "code" : "5891000179108",
        "display" : "especialista en ortopedia y traumatología"
      },
      {
        "code" : "10331000179107",
        "display" : "especialista en enfermería en cuidados intensivos pediátricos"
      },
      {
        "code" : "10591000179104",
        "display" : "magíster en ciencias biológicas"
      },
      {
        "code" : "10271000179100",
        "display" : "doctor en química farmacéutica"
      },
      {
        "code" : "258601000179106",
        "display" : "auxiliar de enfermería en hemoterapia"
      },
      {
        "code" : "258731000179105",
        "display" : "master en psicoanálisis"
      },
      {
        "code" : "10141000179101",
        "display" : "auxiliar de enfermería adiestrado en vacunaciones"
      },
      {
        "code" : "5921000179101",
        "display" : "especialista en administración de servicios de salud"
      },
      {
        "code" : "10691000179103",
        "display" : "magíster en química"
      },
      {
        "code" : "156411000179107",
        "display" : "auxiliar de anatomía patológica"
      },
      {
        "code" : "10561000179109",
        "display" : "magíster en administración de servicios de salud"
      },
      {
        "code" : "7041000179103",
        "display" : "técnico en encefalografía"
      },
      {
        "code" : "263271000179103",
        "display" : "especialista en medicina sexual"
      }]
    }]
  }
}

```
