# Conjunto de Valores Especialidad Médica - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Conjunto de Valores Especialidad Médica 

 
Especialidades médicas válidas para PractitionerRole.specialty. 

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
  "id" : "vs-especialidad-medica",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-especialidad-medica",
  "version" : "0.1.0",
  "name" : "EspecialidadMedica",
  "title" : "Conjunto de Valores Especialidad Médica",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Especialidades médicas válidas para PractitionerRole.specialty.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1186677001",
        "display" : "especialidad en discapacidad intelectual"
      },
      {
        "code" : "1236877003",
        "display" : "patología genética"
      },
      {
        "code" : "1236878008",
        "display" : "histocompatibilidad e inmunogenética"
      },
      {
        "code" : "1251536003",
        "display" : "medicina deportiva"
      },
      {
        "code" : "1251538002",
        "display" : "ortopedia pediátrica"
      },
      {
        "code" : "1251539005",
        "display" : "neurocirugía pediátrica"
      },
      {
        "code" : "1251543009",
        "display" : "hidrología médica"
      },
      {
        "code" : "1251544003",
        "display" : "medicina farmacéutica"
      },
      {
        "code" : "1251545002",
        "display" : "medicina de viaje"
      },
      {
        "code" : "1251546001",
        "display" : "medicina sexual"
      },
      {
        "code" : "1251547005",
        "display" : "neurorradiología"
      },
      {
        "code" : "1251549008",
        "display" : "cardiología intervencionista"
      },
      {
        "code" : "1251550008",
        "display" : "dermatopatología"
      },
      {
        "code" : "1251551007",
        "display" : "electrofisiología cardíaca"
      },
      {
        "code" : "1251552000",
        "display" : "medicina reproductiva"
      },
      {
        "code" : "1251553005",
        "display" : "acupuntura médica"
      },
      {
        "code" : "1251554004",
        "display" : "codificación médica"
      },
      {
        "code" : "1255678007",
        "display" : "enfermería pediátrica"
      },
      {
        "code" : "1255679004",
        "display" : "enfermería de planificación familiar"
      },
      {
        "code" : "1255680001",
        "display" : "enfermería de terapia intensiva"
      },
      {
        "code" : "1255681002",
        "display" : "enfermería en cuidados paliativos"
      },
      {
        "code" : "1255682009",
        "display" : "enfermería perioperatoria"
      },
      {
        "code" : "1255683004",
        "display" : "enfermería de rehabilitación"
      },
      {
        "code" : "1255684005",
        "display" : "enfermería de cuidados crónicos"
      },
      {
        "code" : "1255685006",
        "display" : "enfermería comunitaria"
      },
      {
        "code" : "1255686007",
        "display" : "enfermería médica quirúrgica"
      },
      {
        "code" : "1255731004",
        "display" : "física médica"
      },
      {
        "code" : "1255732006",
        "display" : "anatomía patológica"
      },
      {
        "code" : "1255733001",
        "display" : "física médica en radiología"
      },
      {
        "code" : "1255734007",
        "display" : "física médica en radioterapia"
      },
      {
        "code" : "1255735008",
        "display" : "física médica nuclear"
      },
      {
        "code" : "1255736009",
        "display" : "patología clínica"
      },
      {
        "code" : "1255881004",
        "display" : "enfermería en salud mental"
      },
      {
        "code" : "1255913008",
        "display" : "farmacia industrial"
      },
      {
        "code" : "1255916000",
        "display" : "psicología educacional"
      },
      {
        "code" : "1255918004",
        "display" : "psicología clínica"
      },
      {
        "code" : "1255984008",
        "display" : "farmacogenómica"
      },
      {
        "code" : "1256115008",
        "display" : "nutrición clínica"
      },
      {
        "code" : "1258859005",
        "display" : "nutrición en salud pública"
      },
      {
        "code" : "1258957008",
        "display" : "especialización en farmacia hospitalaria"
      },
      {
        "code" : "1259218001",
        "display" : "medicina Unani"
      },
      {
        "code" : "1259219009",
        "display" : "medicina Siddha"
      },
      {
        "code" : "1259224007",
        "display" : "farmacología regulatoria"
      },
      {
        "code" : "1259938008",
        "display" : "medicina homeopática"
      },
      {
        "code" : "1259939000",
        "display" : "medicina ayurvédica"
      },
      {
        "code" : "1259940003",
        "display" : "yoga terapéutico"
      },
      {
        "code" : "1259944007",
        "display" : "inmunohemoterapia"
      },
      {
        "code" : "1259957004",
        "display" : "estomatología"
      },
      {
        "code" : "1268907002",
        "display" : "farmacia comunitaria"
      },
      {
        "code" : "1284928005",
        "display" : "cirugía gastrointestinal"
      },
      {
        "code" : "1284930007",
        "display" : "cirugía de mano"
      },
      {
        "code" : "1287784006",
        "display" : "enfermería obstétrica"
      },
      {
        "code" : "1290444002",
        "display" : "especialidad en trastornos del movimiento"
      },
      {
        "code" : "1297184004",
        "display" : "neurorradiología intervencionista"
      },
      {
        "code" : "1303753009",
        "display" : "osteología"
      },
      {
        "code" : "1303754003",
        "display" : "pelviperineología"
      },
      {
        "code" : "1303755002",
        "display" : "linfología"
      },
      {
        "code" : "1303756001",
        "display" : "flebología"
      },
      {
        "code" : "1303757005",
        "display" : "implantología oral"
      },
      {
        "code" : "1303758000",
        "display" : "cirugía de base de cráneo"
      },
      {
        "code" : "1303759008",
        "display" : "ecografía pediátrica"
      },
      {
        "code" : "1303764007",
        "display" : "foniatría"
      },
      {
        "code" : "1303859002",
        "display" : "neuropelveología"
      },
      {
        "code" : "1303860007",
        "display" : "especialización en fisioterapia cardiorrespiratoria"
      },
      {
        "code" : "1303926004",
        "display" : "especialidad de fisioterapia neurológica"
      },
      {
        "code" : "1303930001",
        "display" : "especialidad de fisioterapia musculoesquelética"
      },
      {
        "code" : "1304212007",
        "display" : "radiología torácica"
      },
      {
        "code" : "1304214008",
        "display" : "radiología musculoesquelética"
      },
      {
        "code" : "1306488000",
        "display" : "radiología cardiovascular"
      },
      {
        "code" : "1306761006",
        "display" : "medicina estética"
      },
      {
        "code" : "1332234006",
        "display" : "mastología"
      },
      {
        "code" : "1335904004",
        "display" : "neurourología"
      },
      {
        "code" : "1336020004",
        "display" : "enfermería de atención crítica"
      },
      {
        "code" : "1340249005",
        "display" : "especialización en farmacia militar"
      },
      {
        "code" : "1345026002",
        "display" : "especialidad de ortopedia"
      },
      {
        "code" : "1345027006",
        "display" : "especialidad de ortopedia quirúrgica"
      },
      {
        "code" : "1351234002",
        "display" : "neuropsicología clínica"
      },
      {
        "code" : "1365982005",
        "display" : "especialidad en manejo de dolor agudo"
      },
      {
        "code" : "23861000087105",
        "display" : "dermatología de adultos"
      },
      {
        "code" : "23881000087104",
        "display" : "hematología de adultos"
      },
      {
        "code" : "23921000087107",
        "display" : "especialidad de revisión de medicación"
      },
      {
        "code" : "23931000087109",
        "display" : "especialidad médica de adicción a narcóticos"
      },
      {
        "code" : "23961000087102",
        "display" : "especialidad de manejo de la dependencia de opioides"
      },
      {
        "code" : "23971000087106",
        "display" : "dermatología pediátrica"
      },
      {
        "code" : "23981000087108",
        "display" : "especialidad de hematooncología pediátrica"
      },
      {
        "code" : "23991000087105",
        "display" : "cirugía plástica pediátrica"
      },
      {
        "code" : "24021000087109",
        "display" : "especialidad en diagnóstico por imágenes vasculares"
      },
      {
        "code" : "24061000087104",
        "display" : "especialidad de oncología quirúrgica mamaria"
      },
      {
        "code" : "24091000087107",
        "display" : "especialidad de enfermería dirigida a la atención del virus de la inmunodeficiencia humana"
      },
      {
        "code" : "24111000087100",
        "display" : "especialidad de trabajo social relacionado con el virus de la inmunodeficiencia humana"
      },
      {
        "code" : "24151000087101",
        "display" : "especialidad de cirugía ortopédica de columna vertebral"
      },
      {
        "code" : "24241000087106",
        "display" : "especialidad de ortopedia general"
      },
      {
        "code" : "24251000087109",
        "display" : "especialidad de pediatría general"
      },
      {
        "code" : "24281000087101",
        "display" : "especialidad en manejo del dolor crónico en adultos"
      },
      {
        "code" : "24301000087100",
        "display" : "especialidad en manejo del dolor crónico en geriatría"
      },
      {
        "code" : "24311000087103",
        "display" : "especialidad en medicina de adicción a narcóticos con manejo del dolor crónico"
      },
      {
        "code" : "24361000087101",
        "display" : "especialidad en manejo del dolor crónico en pediatría"
      },
      {
        "code" : "25931000087108",
        "display" : "medicina del adolescente"
      },
      {
        "code" : "25991000087109",
        "display" : "farmacología y toxicología clínica"
      },
      {
        "code" : "26001000087108",
        "display" : "especialidad pediátrica del desarrollo"
      },
      {
        "code" : "26011000087105",
        "display" : "patología forense"
      },
      {
        "code" : "26041000087106",
        "display" : "radiología pediátrica"
      },
      {
        "code" : "26051000087109",
        "display" : "perinatología"
      },
      {
        "code" : "26081000087101",
        "display" : "salud pública y medicina preventiva"
      },
      {
        "code" : "28351000087106",
        "display" : "especialidad en adicciones"
      },
      {
        "code" : "28551000087103",
        "display" : "especialidad en medicina musculoesquelética"
      },
      {
        "code" : "357541000267105",
        "display" : "radiología oral y maxilofacial"
      },
      {
        "code" : "357571000267100",
        "display" : "patología oral y maxilofacial"
      },
      {
        "code" : "394537008",
        "display" : "especialidad pediátrica"
      },
      {
        "code" : "394538003",
        "display" : "neurología pediátrica"
      },
      {
        "code" : "394539006",
        "display" : "cirugía pediátrica"
      },
      {
        "code" : "394577000",
        "display" : "anestesiología"
      },
      {
        "code" : "394578005",
        "display" : "audiología"
      },
      {
        "code" : "394579002",
        "display" : "cardiología"
      },
      {
        "code" : "394580004",
        "display" : "genética clínica"
      },
      {
        "code" : "394581000",
        "display" : "medicina comunitaria"
      },
      {
        "code" : "394582007",
        "display" : "dermatología"
      },
      {
        "code" : "394583002",
        "display" : "endocrinología"
      },
      {
        "code" : "394584008",
        "display" : "gastroenterología"
      },
      {
        "code" : "394585009",
        "display" : "obstetricia y ginecología"
      },
      {
        "code" : "394586005",
        "display" : "ginecología"
      },
      {
        "code" : "394587001",
        "display" : "psiquiatría"
      },
      {
        "code" : "394588006",
        "display" : "psiquiatría infantojuvenil"
      },
      {
        "code" : "394589003",
        "display" : "nefrología"
      },
      {
        "code" : "394591006",
        "display" : "neurología"
      },
      {
        "code" : "394592004",
        "display" : "oncología clínica"
      },
      {
        "code" : "394593009",
        "display" : "oncología médica"
      },
      {
        "code" : "394594003",
        "display" : "oftalmología"
      },
      {
        "code" : "394595002",
        "display" : "patología"
      },
      {
        "code" : "394596001",
        "display" : "bioquímica clínica"
      },
      {
        "code" : "394597005",
        "display" : "histopatología"
      },
      {
        "code" : "394598000",
        "display" : "inmunopatología"
      },
      {
        "code" : "394599008",
        "display" : "neuropatología"
      },
      {
        "code" : "394600006",
        "display" : "farmacología clínica"
      },
      {
        "code" : "394601005",
        "display" : "fisiología clínica"
      },
      {
        "code" : "394602003",
        "display" : "rehabilitación - especialidad"
      },
      {
        "code" : "394603008",
        "display" : "cirugía cardiotorácica"
      },
      {
        "code" : "394604002",
        "display" : "cirugía otorrinolaringológica"
      },
      {
        "code" : "394605001",
        "display" : "cirugía oral"
      },
      {
        "code" : "394606000",
        "display" : "odontología restauradora"
      },
      {
        "code" : "394607009",
        "display" : "odontología pediátrica"
      },
      {
        "code" : "394608004",
        "display" : "ortodoncia"
      },
      {
        "code" : "394609007",
        "display" : "cirugía general"
      },
      {
        "code" : "394610002",
        "display" : "neurocirugía"
      },
      {
        "code" : "394611003",
        "display" : "cirugía plástica - especialidad"
      },
      {
        "code" : "394612005",
        "display" : "urología"
      },
      {
        "code" : "394649004",
        "display" : "medicina nuclear - especialidad"
      },
      {
        "code" : "394658006",
        "display" : "especialidad clínica"
      },
      {
        "code" : "394732004",
        "display" : "especialidad quirúrgica"
      },
      {
        "code" : "394733009",
        "display" : "especialidad médica"
      },
      {
        "code" : "394734003",
        "display" : "especialidades radiológicas"
      },
      {
        "code" : "394801008",
        "display" : "traumatología y ortopedia"
      },
      {
        "code" : "394802001",
        "display" : "medicina general"
      },
      {
        "code" : "394803006",
        "display" : "hematología clínica"
      },
      {
        "code" : "394804000",
        "display" : "citogenética clínica y genética molecular"
      },
      {
        "code" : "394805004",
        "display" : "inmunología clínica/alergia"
      },
      {
        "code" : "394806003",
        "display" : "medicina paliativa"
      },
      {
        "code" : "394807007",
        "display" : "infectología"
      },
      {
        "code" : "394808002",
        "display" : "medicina genitourinaria"
      },
      {
        "code" : "394809005",
        "display" : "neurofisiología clínica"
      },
      {
        "code" : "394810000",
        "display" : "reumatología"
      },
      {
        "code" : "394811001",
        "display" : "geriatría"
      },
      {
        "code" : "394813003",
        "display" : "oftalmología clínica"
      },
      {
        "code" : "394814009",
        "display" : "medicina familiar/general (especialidad)"
      },
      {
        "code" : "394816006",
        "display" : "enfermedades mentales (especialidad)"
      },
      {
        "code" : "394817002",
        "display" : "psiquiatría forense"
      },
      {
        "code" : "394818007",
        "display" : "gerontopsiquiatría"
      },
      {
        "code" : "394819004",
        "display" : "hemoterapia (especialidad)"
      },
      {
        "code" : "394820005",
        "display" : "microbiología médica"
      },
      {
        "code" : "394821009",
        "display" : "medicina laboral"
      },
      {
        "code" : "394882004",
        "display" : "manejo del dolor (especialidad)"
      },
      {
        "code" : "394913002",
        "display" : "psicoterapia (especialidad)"
      },
      {
        "code" : "394914008",
        "display" : "radiología - especialidad"
      },
      {
        "code" : "394915009",
        "display" : "patología general (especialidad)"
      },
      {
        "code" : "394916005",
        "display" : "hematopatología (especialidad)"
      },
      {
        "code" : "408439002",
        "display" : "especialidad en alergia"
      },
      {
        "code" : "408440000",
        "display" : "medicina sanitaria"
      },
      {
        "code" : "408441001",
        "display" : "endodoncia - especialidad"
      },
      {
        "code" : "408442008",
        "display" : "hemofilia - especialidad"
      },
      {
        "code" : "408443003",
        "display" : "consultorio de medicina general"
      },
      {
        "code" : "408444009",
        "display" : "práctica odontológica general"
      },
      {
        "code" : "408445005",
        "display" : "neonatología"
      },
      {
        "code" : "408446006",
        "display" : "oncología ginecológica"
      },
      {
        "code" : "408447002",
        "display" : "cuidado de relevo - especialidad"
      },
      {
        "code" : "408448007",
        "display" : "medicina tropical"
      },
      {
        "code" : "408449004",
        "display" : "odontología quirúrgica"
      },
      {
        "code" : "408450004",
        "display" : "estudios de sueño - especialidad"
      },
      {
        "code" : "408454008",
        "display" : "microbiología clínica"
      },
      {
        "code" : "408455009",
        "display" : "radiología intervencionista - especialidad"
      },
      {
        "code" : "408456005",
        "display" : "cirugía torácica"
      },
      {
        "code" : "408457001",
        "display" : "cirugía maxilofacial"
      },
      {
        "code" : "408459003",
        "display" : "cardiología pediátrica"
      },
      {
        "code" : "408460008",
        "display" : "prostodoncia"
      },
      {
        "code" : "408461007",
        "display" : "periodoncia"
      },
      {
        "code" : "408462000",
        "display" : "atención de quemaduras"
      },
      {
        "code" : "408463005",
        "display" : "cirugía vascular"
      },
      {
        "code" : "408464004",
        "display" : "cirugía colorrectal"
      },
      {
        "code" : "408465003",
        "display" : "cirugía bucomaxilofacial"
      },
      {
        "code" : "408466002",
        "display" : "cirugía cardíaca"
      },
      {
        "code" : "408467006",
        "display" : "psiquiatría del adulto - especialidad"
      },
      {
        "code" : "408468001",
        "display" : "dificultades de aprendizaje - especialidad"
      },
      {
        "code" : "408469009",
        "display" : "cirugía de mama"
      },
      {
        "code" : "408470005",
        "display" : "obstetricia"
      },
      {
        "code" : "408471009",
        "display" : "trasplante cardiotorácico"
      },
      {
        "code" : "408472002",
        "display" : "hepatología"
      },
      {
        "code" : "408473007",
        "display" : "odontología sanitaria"
      },
      {
        "code" : "408474001",
        "display" : "cirugía hepatobiliar y pancreática"
      },
      {
        "code" : "408475000",
        "display" : "diabetología"
      },
      {
        "code" : "408477008",
        "display" : "cirugía de trasplante"
      },
      {
        "code" : "408478003",
        "display" : "medicina crítica"
      },
      {
        "code" : "408479006",
        "display" : "cirugía de porción superior de tracto gastrointestinal"
      },
      {
        "code" : "408480009",
        "display" : "inmunología clínica"
      },
      {
        "code" : "409967009",
        "display" : "toxicología"
      },
      {
        "code" : "409968004",
        "display" : "medicina preventiva"
      },
      {
        "code" : "410001006",
        "display" : "medicina militar"
      },
      {
        "code" : "410005002",
        "display" : "medicina hiperbárica"
      },
      {
        "code" : "416304004",
        "display" : "medicina osteopática manipulativa"
      },
      {
        "code" : "417887005",
        "display" : "otolaringología pediátrica"
      },
      {
        "code" : "418002000",
        "display" : "oncología pediátrica"
      },
      {
        "code" : "418018006",
        "display" : "cirugía dermatológica"
      },
      {
        "code" : "418058008",
        "display" : "gastroenterología pediátrica"
      },
      {
        "code" : "418112009",
        "display" : "neumonología"
      },
      {
        "code" : "418535003",
        "display" : "inmunología pediátrica"
      },
      {
        "code" : "418652005",
        "display" : "hematología pediátrica"
      },
      {
        "code" : "418862001",
        "display" : "enfermedades infecciosas pediátricas"
      },
      {
        "code" : "418960008",
        "display" : "otolaringología"
      },
      {
        "code" : "419043006",
        "display" : "oncología urológica"
      },
      {
        "code" : "419170002",
        "display" : "neumonología pediátrica"
      },
      {
        "code" : "419192003",
        "display" : "medicina interna"
      },
      {
        "code" : "419215006",
        "display" : "cuidados intensivos pediátricos"
      },
      {
        "code" : "419321007",
        "display" : "oncología quirúrgica"
      },
      {
        "code" : "419365004",
        "display" : "nefrología pediátrica"
      },
      {
        "code" : "419472004",
        "display" : "reumatología pediátrica"
      },
      {
        "code" : "419610006",
        "display" : "endocrinología pediátrica"
      },
      {
        "code" : "419677000",
        "display" : "oncología neurológica pediátrica"
      },
      {
        "code" : "419772000",
        "display" : "medicina familiar"
      },
      {
        "code" : "419815003",
        "display" : "radioncología"
      },
      {
        "code" : "419917007",
        "display" : "emergentología pediátrica"
      },
      {
        "code" : "419983000",
        "display" : "oftalmología pediátrica"
      },
      {
        "code" : "420112009",
        "display" : "trasplante de médula ósea pediátrico"
      },
      {
        "code" : "420208008",
        "display" : "genética pediátrica"
      },
      {
        "code" : "420419008",
        "display" : "especialidad en cirugía de estrabismo"
      },
      {
        "code" : "420708009",
        "display" : "especialidad en cirugía refractiva"
      },
      {
        "code" : "420985004",
        "display" : "cirugía vitreorretiniana - especialidad"
      },
      {
        "code" : "421582004",
        "display" : "cirugía de córnea - especialidad"
      },
      {
        "code" : "421661004",
        "display" : "banco de sangre y medicina transfusional - especialidad"
      },
      {
        "code" : "421885009",
        "display" : "especialidad de oftalmología, cirugía de glaucoma"
      },
      {
        "code" : "422171003",
        "display" : "cirugía plástica oftálmica"
      },
      {
        "code" : "422191005",
        "display" : "cirugía oftálmica"
      },
      {
        "code" : "422349000",
        "display" : "especialidad en cirugía de cataratas"
      },
      {
        "code" : "445715009",
        "display" : "trasplante de sangre y médula ósea"
      },
      {
        "code" : "715184008",
        "display" : "medicina aeroespacial"
      },
      {
        "code" : "718359001",
        "display" : "medicina regenerativa"
      },
      {
        "code" : "721961006",
        "display" : "medicina psicosomática"
      },
      {
        "code" : "722138006",
        "display" : "fisioterapia"
      },
      {
        "code" : "722162001",
        "display" : "psicología"
      },
      {
        "code" : "722163006",
        "display" : "odontología"
      },
      {
        "code" : "722164000",
        "display" : "dietética y nutrición"
      },
      {
        "code" : "722165004",
        "display" : "enfermería"
      },
      {
        "code" : "722166003",
        "display" : "podología"
      },
      {
        "code" : "722204007",
        "display" : "medicina legal"
      },
      {
        "code" : "722414000",
        "display" : "medicina vascular"
      },
      {
        "code" : "773568002",
        "display" : "medicina de emergencias"
      },
      {
        "code" : "786454007",
        "display" : "medicina perioperatoria"
      },
      {
        "code" : "788415003",
        "display" : "medicina de trasplantes"
      },
      {
        "code" : "92041000087100",
        "display" : "gastroenterología de adultos"
      },
      {
        "code" : "92231000087100",
        "display" : "especialidad en manejo de dolor crónico"
      }]
    }]
  }
}

```
