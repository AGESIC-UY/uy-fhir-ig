# Sistema de códigos de barrios y localidades postales de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## CodeSystem: Sistema de códigos de barrios y localidades postales de Uruguay 

 
Barrios y localidades presentes en el listado nacional de códigos postales del Correo Uruguayo. 

Se hace referencia a este sistema de códigos en la definición de los siguientes conjuntos de valores:

* [VSBarriosLocalidadesUY](ValueSet-vs-barrios-localidades-uy.md)

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-barrios-localidades-uy",
  "url" : "http://fhir.hcen.gub.uy/CodeSystem/cs-barrios-localidades-uy",
  "version" : "0.1.0",
  "name" : "CSBarriosLocalidadesUY",
  "title" : "Sistema de códigos de barrios y localidades postales de Uruguay",
  "status" : "draft",
  "date" : "2026-09-28T15:20:04-03:00",
  "publisher" : "AGESIC",
  "description" : "Barrios y localidades presentes en el listado nacional de códigos postales del Correo Uruguayo.",
  "copyright" : "Fuente: Correo Uruguayo, listado de códigos postales consultado el 2026-09-21.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1819,
  "concept" : [{
    "code" : "18 DE JULIO",
    "display" : "18 DE JULIO"
  },
  {
    "code" : "19 DE ABRIL",
    "display" : "19 DE ABRIL"
  },
  {
    "code" : "19 DE JUNIO",
    "display" : "19 DE JUNIO"
  },
  {
    "code" : "25 DE AGOSTO",
    "display" : "25 DE AGOSTO"
  },
  {
    "code" : "25 DE MAYO",
    "display" : "25 DE MAYO"
  },
  {
    "code" : "Ã‘ANGAPIRE",
    "display" : "Ã‘ANGAPIRE"
  },
  {
    "code" : "ABAYUBA",
    "display" : "ABAYUBA"
  },
  {
    "code" : "ABELLA",
    "display" : "ABELLA"
  },
  {
    "code" : "ABRA DE ALFEREZ",
    "display" : "ABRA DE ALFEREZ"
  },
  {
    "code" : "ABRA DE CASTELLANOS",
    "display" : "ABRA DE CASTELLANOS"
  },
  {
    "code" : "ABRA DE PERDOMO",
    "display" : "ABRA DE PERDOMO"
  },
  {
    "code" : "ABRA DE ZABALETA",
    "display" : "ABRA DE ZABALETA"
  },
  {
    "code" : "ABROJAL",
    "display" : "ABROJAL"
  },
  {
    "code" : "ACEGUA",
    "display" : "ACEGUA"
  },
  {
    "code" : "ACHAR",
    "display" : "ACHAR"
  },
  {
    "code" : "ACOSTA",
    "display" : "ACOSTA"
  },
  {
    "code" : "AEROPUERTO INTERNACIONAL DE CARRASCO",
    "display" : "AEROPUERTO INTERNACIONAL DE CARRASCO"
  },
  {
    "code" : "AGRACIADA",
    "display" : "AGRACIADA"
  },
  {
    "code" : "AGUADA",
    "display" : "AGUADA"
  },
  {
    "code" : "AGUAS BLANCAS",
    "display" : "AGUAS BLANCAS"
  },
  {
    "code" : "AGUAS BUENAS",
    "display" : "AGUAS BUENAS"
  },
  {
    "code" : "AGUAS CORRIENTES",
    "display" : "AGUAS CORRIENTES"
  },
  {
    "code" : "AGUAS DULCES",
    "display" : "AGUAS DULCES"
  },
  {
    "code" : "AGUIRRE",
    "display" : "AGUIRRE"
  },
  {
    "code" : "AHOGADOS",
    "display" : "AHOGADOS"
  },
  {
    "code" : "AIGUA",
    "display" : "AIGUA"
  },
  {
    "code" : "AIRES PUROS",
    "display" : "AIRES PUROS"
  },
  {
    "code" : "AL SUR DE ARROYO SACRA",
    "display" : "AL SUR DE ARROYO SACRA"
  },
  {
    "code" : "ALBORADA",
    "display" : "ALBORADA"
  },
  {
    "code" : "ALEJANDRO GALLINAL",
    "display" : "ALEJANDRO GALLINAL"
  },
  {
    "code" : "ALFARO",
    "display" : "ALFARO"
  },
  {
    "code" : "ALFEREZ",
    "display" : "ALFEREZ"
  },
  {
    "code" : "ALGORTA",
    "display" : "ALGORTA"
  },
  {
    "code" : "ALONSO",
    "display" : "ALONSO"
  },
  {
    "code" : "ALTOS DE LA TAHONA",
    "display" : "ALTOS DE LA TAHONA"
  },
  {
    "code" : "ALTOS DEL PERDIDO",
    "display" : "ALTOS DEL PERDIDO"
  },
  {
    "code" : "AMARILLO",
    "display" : "AMARILLO"
  },
  {
    "code" : "ANDRESITO",
    "display" : "ANDRESITO"
  },
  {
    "code" : "ANTONIOPOLIS",
    "display" : "ANTONIOPOLIS"
  },
  {
    "code" : "ARACHANIA",
    "display" : "ARACHANIA"
  },
  {
    "code" : "ARAMENDIA",
    "display" : "ARAMENDIA"
  },
  {
    "code" : "ARAMINDA",
    "display" : "ARAMINDA"
  },
  {
    "code" : "ARAUJO",
    "display" : "ARAUJO"
  },
  {
    "code" : "ARBOLITO",
    "display" : "ARBOLITO"
  },
  {
    "code" : "ARBOLITO (TOTORAL)",
    "display" : "ARBOLITO (TOTORAL)"
  },
  {
    "code" : "ARENAL",
    "display" : "ARENAL"
  },
  {
    "code" : "ARENAL CHICO",
    "display" : "ARENAL CHICO"
  },
  {
    "code" : "ARENAL GRANDE",
    "display" : "ARENAL GRANDE"
  },
  {
    "code" : "ARENAS DE JOSE IGNACIO",
    "display" : "ARENAS DE JOSE IGNACIO"
  },
  {
    "code" : "ARENITAS BLANCAS",
    "display" : "ARENITAS BLANCAS"
  },
  {
    "code" : "AREQUITA",
    "display" : "AREQUITA"
  },
  {
    "code" : "AREVALO",
    "display" : "AREVALO"
  },
  {
    "code" : "ARGENTINO",
    "display" : "ARGENTINO"
  },
  {
    "code" : "ARRAYAN",
    "display" : "ARRAYAN"
  },
  {
    "code" : "ARRAYANES DE CEBOLLATI",
    "display" : "ARRAYANES DE CEBOLLATI"
  },
  {
    "code" : "ARRAYANES DE CORRAL DE CEBOLLATI",
    "display" : "ARRAYANES DE CORRAL DE CEBOLLATI"
  },
  {
    "code" : "ARRIVILLAGA",
    "display" : "ARRIVILLAGA"
  },
  {
    "code" : "ARROCERA BONOMO",
    "display" : "ARROCERA BONOMO"
  },
  {
    "code" : "ARROCERA EL TIGRE",
    "display" : "ARROCERA EL TIGRE"
  },
  {
    "code" : "ARROCERA LA CATUMBERA",
    "display" : "ARROCERA LA CATUMBERA"
  },
  {
    "code" : "ARROCERA LA QUERENCIA",
    "display" : "ARROCERA LA QUERENCIA"
  },
  {
    "code" : "ARROCERA LAS PALMAS",
    "display" : "ARROCERA LAS PALMAS"
  },
  {
    "code" : "ARROCERA LOS CEIBOS",
    "display" : "ARROCERA LOS CEIBOS"
  },
  {
    "code" : "ARROCERA LOS TEROS",
    "display" : "ARROCERA LOS TEROS"
  },
  {
    "code" : "ARROCERA MINI",
    "display" : "ARROCERA MINI"
  },
  {
    "code" : "ARROCERA PROCIPA",
    "display" : "ARROCERA PROCIPA"
  },
  {
    "code" : "ARROCERA RINCON",
    "display" : "ARROCERA RINCON"
  },
  {
    "code" : "ARROCERA SAN FERNANDO",
    "display" : "ARROCERA SAN FERNANDO"
  },
  {
    "code" : "ARROCERA SANTA FE",
    "display" : "ARROCERA SANTA FE"
  },
  {
    "code" : "ARROCERA ZAPATA",
    "display" : "ARROCERA ZAPATA"
  },
  {
    "code" : "ARROYITO DE MEDINA",
    "display" : "ARROYITO DE MEDINA"
  },
  {
    "code" : "ARROYO BLANCO",
    "display" : "ARROYO BLANCO"
  },
  {
    "code" : "ARROYO CHAMIZO",
    "display" : "ARROYO CHAMIZO"
  },
  {
    "code" : "ARROYO DE LA VIRGEN",
    "display" : "ARROYO DE LA VIRGEN"
  },
  {
    "code" : "ARROYO DE LOS NEGROS",
    "display" : "ARROYO DE LOS NEGROS"
  },
  {
    "code" : "ARROYO DE LOS PATOS",
    "display" : "ARROYO DE LOS PATOS"
  },
  {
    "code" : "ARROYO DE LOS PERROS",
    "display" : "ARROYO DE LOS PERROS"
  },
  {
    "code" : "ARROYO DEL MEDIO",
    "display" : "ARROYO DEL MEDIO"
  },
  {
    "code" : "ARROYO GRANDE",
    "display" : "ARROYO GRANDE"
  },
  {
    "code" : "ARROYO LATORRE",
    "display" : "ARROYO LATORRE"
  },
  {
    "code" : "ARROYO LLANO",
    "display" : "ARROYO LLANO"
  },
  {
    "code" : "ARROYO MALO",
    "display" : "ARROYO MALO"
  },
  {
    "code" : "ARROYO MONZON",
    "display" : "ARROYO MONZON"
  },
  {
    "code" : "ARROYO NEGRO",
    "display" : "ARROYO NEGRO"
  },
  {
    "code" : "ARROYO PELADO",
    "display" : "ARROYO PELADO"
  },
  {
    "code" : "ARROYO SAUZAL",
    "display" : "ARROYO SAUZAL"
  },
  {
    "code" : "ARROZAL CESARONE",
    "display" : "ARROZAL CESARONE"
  },
  {
    "code" : "ARROZAL ROSALES",
    "display" : "ARROZAL ROSALES"
  },
  {
    "code" : "ARROZAL TREINTA Y TRES",
    "display" : "ARROZAL TREINTA Y TRES"
  },
  {
    "code" : "ARTEAGA",
    "display" : "ARTEAGA"
  },
  {
    "code" : "ARTILLEROS",
    "display" : "ARTILLEROS"
  },
  {
    "code" : "ASENCIO",
    "display" : "ASENCIO"
  },
  {
    "code" : "ASPEREZAS",
    "display" : "ASPEREZAS"
  },
  {
    "code" : "ATAHUALPA",
    "display" : "ATAHUALPA"
  },
  {
    "code" : "ATAQUE",
    "display" : "ATAQUE"
  },
  {
    "code" : "ATAQUES",
    "display" : "ATAQUES"
  },
  {
    "code" : "ATLANTIDA",
    "display" : "ATLANTIDA"
  },
  {
    "code" : "AUTODROMO",
    "display" : "AUTODROMO"
  },
  {
    "code" : "AUTODROMO NACIONAL",
    "display" : "AUTODROMO NACIONAL"
  },
  {
    "code" : "AVESTRUZ CHICO",
    "display" : "AVESTRUZ CHICO"
  },
  {
    "code" : "AZOTEA DE VERA",
    "display" : "AZOTEA DE VERA"
  },
  {
    "code" : "AZUCAR",
    "display" : "AZUCAR"
  },
  {
    "code" : "B.H.U.",
    "display" : "B.H.U."
  },
  {
    "code" : "BAÃ‘ADO",
    "display" : "BAÃ‘ADO"
  },
  {
    "code" : "BAÃ‘ADO DE CAÃ‘AS",
    "display" : "BAÃ‘ADO DE CAÃ‘AS"
  },
  {
    "code" : "BAÃ‘ADO DE LAS PAJAS",
    "display" : "BAÃ‘ADO DE LAS PAJAS"
  },
  {
    "code" : "BAÃ‘ADO DE MEDINA",
    "display" : "BAÃ‘ADO DE MEDINA"
  },
  {
    "code" : "BAÃ‘ADO DE ORO",
    "display" : "BAÃ‘ADO DE ORO"
  },
  {
    "code" : "BAÃ‘ADO DE ROCHA",
    "display" : "BAÃ‘ADO DE ROCHA"
  },
  {
    "code" : "BAÃ‘ADO DEL CHAJA",
    "display" : "BAÃ‘ADO DEL CHAJA"
  },
  {
    "code" : "BAÃ‘ADOS DE CARRASCO",
    "display" : "BAÃ‘ADOS DE CARRASCO"
  },
  {
    "code" : "BAJOS DEL PERDIDO",
    "display" : "BAJOS DEL PERDIDO"
  },
  {
    "code" : "BALNEARIO ALBISU",
    "display" : "BALNEARIO ALBISU"
  },
  {
    "code" : "BALNEARIO BUENOS AIRES",
    "display" : "BALNEARIO BUENOS AIRES"
  },
  {
    "code" : "BALNEARIO IPORA",
    "display" : "BALNEARIO IPORA"
  },
  {
    "code" : "BALNEARIO PUEBLO NUEVO",
    "display" : "BALNEARIO PUEBLO NUEVO"
  },
  {
    "code" : "BALTASAR BRUM",
    "display" : "BALTASAR BRUM"
  },
  {
    "code" : "BARKER",
    "display" : "BARKER"
  },
  {
    "code" : "BARKER NORTE",
    "display" : "BARKER NORTE"
  },
  {
    "code" : "BARRA DE ATAQUES",
    "display" : "BARRA DE ATAQUES"
  },
  {
    "code" : "BARRA DE CARRASCO",
    "display" : "BARRA DE CARRASCO"
  },
  {
    "code" : "BARRA DE LA PEDRERA",
    "display" : "BARRA DE LA PEDRERA"
  },
  {
    "code" : "BARRA DE LOS CHANCHOS",
    "display" : "BARRA DE LOS CHANCHOS"
  },
  {
    "code" : "BARRA DE PORTEZUELO",
    "display" : "BARRA DE PORTEZUELO"
  },
  {
    "code" : "BARRA DE VALIZAS",
    "display" : "BARRA DE VALIZAS"
  },
  {
    "code" : "BARRA DEL CHUY",
    "display" : "BARRA DEL CHUY"
  },
  {
    "code" : "BARRA DEL SAUCE",
    "display" : "BARRA DEL SAUCE"
  },
  {
    "code" : "BARRA DEL TACUARI",
    "display" : "BARRA DEL TACUARI"
  },
  {
    "code" : "BARRA DEL TALA",
    "display" : "BARRA DEL TALA"
  },
  {
    "code" : "BARRA ISLA NEGRA",
    "display" : "BARRA ISLA NEGRA"
  },
  {
    "code" : "BARRA MOLLES DEL TIMOTE",
    "display" : "BARRA MOLLES DEL TIMOTE"
  },
  {
    "code" : "BARRA SAUCE DE MANSAVILLAGRA",
    "display" : "BARRA SAUCE DE MANSAVILLAGRA"
  },
  {
    "code" : "BARRANCAS",
    "display" : "BARRANCAS"
  },
  {
    "code" : "BARRANCAS COLORADAS",
    "display" : "BARRANCAS COLORADAS"
  },
  {
    "code" : "BARRANCAS DE LA CORONILLA",
    "display" : "BARRANCAS DE LA CORONILLA"
  },
  {
    "code" : "BARRANCAS DE LA PEDRERA",
    "display" : "BARRANCAS DE LA PEDRERA"
  },
  {
    "code" : "BARRIGA NEGRA",
    "display" : "BARRIGA NEGRA"
  },
  {
    "code" : "BARRIO ABREU",
    "display" : "BARRIO ABREU"
  },
  {
    "code" : "BARRIO ANGLO",
    "display" : "BARRIO ANGLO"
  },
  {
    "code" : "BARRIO ARTIGAS",
    "display" : "BARRIO ARTIGAS"
  },
  {
    "code" : "BARRIO BENZO",
    "display" : "BARRIO BENZO"
  },
  {
    "code" : "BARRIO CARDOZO",
    "display" : "BARRIO CARDOZO"
  },
  {
    "code" : "BARRIO COPOLA",
    "display" : "BARRIO COPOLA"
  },
  {
    "code" : "BARRIO DEL LIBERTADOR",
    "display" : "BARRIO DEL LIBERTADOR"
  },
  {
    "code" : "BARRIO DURAN",
    "display" : "BARRIO DURAN"
  },
  {
    "code" : "BARRIO HIPODROMO",
    "display" : "BARRIO HIPODROMO"
  },
  {
    "code" : "BARRIO KENNEDY",
    "display" : "BARRIO KENNEDY"
  },
  {
    "code" : "BARRIO LA CORONILLA - ANCAP",
    "display" : "BARRIO LA CORONILLA - ANCAP"
  },
  {
    "code" : "BARRIO LA LUCHA",
    "display" : "BARRIO LA LUCHA"
  },
  {
    "code" : "BARRIO LA MATUTINA",
    "display" : "BARRIO LA MATUTINA"
  },
  {
    "code" : "BARRIO LA VINCHUCA",
    "display" : "BARRIO LA VINCHUCA"
  },
  {
    "code" : "BARRIO LIBERTAD",
    "display" : "BARRIO LIBERTAD"
  },
  {
    "code" : "BARRIO LOPEZ",
    "display" : "BARRIO LOPEZ"
  },
  {
    "code" : "BARRIO LOPEZ BENITEZ",
    "display" : "BARRIO LOPEZ BENITEZ"
  },
  {
    "code" : "BARRIO LOS PANORAMAS",
    "display" : "BARRIO LOS PANORAMAS"
  },
  {
    "code" : "BARRIO MENDAÃ‘A",
    "display" : "BARRIO MENDAÃ‘A"
  },
  {
    "code" : "BARRIO MONTERREY",
    "display" : "BARRIO MONTERREY"
  },
  {
    "code" : "BARRIO OBRERO",
    "display" : "BARRIO OBRERO"
  },
  {
    "code" : "BARRIO OLIMPICO",
    "display" : "BARRIO OLIMPICO"
  },
  {
    "code" : "BARRIO PEREIRA",
    "display" : "BARRIO PEREIRA"
  },
  {
    "code" : "BARRIO PORVENIR",
    "display" : "BARRIO PORVENIR"
  },
  {
    "code" : "BARRIO PRETTI",
    "display" : "BARRIO PRETTI"
  },
  {
    "code" : "BARRIO RECREO",
    "display" : "BARRIO RECREO"
  },
  {
    "code" : "BARRIO REMANSO",
    "display" : "BARRIO REMANSO"
  },
  {
    "code" : "BARRIO SAN CRISTOBAL",
    "display" : "BARRIO SAN CRISTOBAL"
  },
  {
    "code" : "BARRIO SANTA RITA",
    "display" : "BARRIO SANTA RITA"
  },
  {
    "code" : "BARRIO SANTANGELO",
    "display" : "BARRIO SANTANGELO"
  },
  {
    "code" : "BARRIO SUR",
    "display" : "BARRIO SUR"
  },
  {
    "code" : "BARRIO TORRES",
    "display" : "BARRIO TORRES"
  },
  {
    "code" : "BARRIO TRAVERSO",
    "display" : "BARRIO TRAVERSO"
  },
  {
    "code" : "BARRIO VILLA MURCIA",
    "display" : "BARRIO VILLA MURCIA"
  },
  {
    "code" : "BARROS BLANCOS",
    "display" : "BARROS BLANCOS"
  },
  {
    "code" : "BATOVI",
    "display" : "BATOVI"
  },
  {
    "code" : "BAYGORRIA",
    "display" : "BAYGORRIA"
  },
  {
    "code" : "BEISSO",
    "display" : "BEISSO"
  },
  {
    "code" : "BELEN",
    "display" : "BELEN"
  },
  {
    "code" : "BELGRANO NORTE",
    "display" : "BELGRANO NORTE"
  },
  {
    "code" : "BELGRANO SUR",
    "display" : "BELGRANO SUR"
  },
  {
    "code" : "BELLA UNION",
    "display" : "BELLA UNION"
  },
  {
    "code" : "BELLA VISTA",
    "display" : "BELLA VISTA"
  },
  {
    "code" : "BELLACO",
    "display" : "BELLACO"
  },
  {
    "code" : "BELLO HORIZONTE",
    "display" : "BELLO HORIZONTE"
  },
  {
    "code" : "BELVEDERE",
    "display" : "BELVEDERE"
  },
  {
    "code" : "BEQUELO",
    "display" : "BEQUELO"
  },
  {
    "code" : "BERACHI",
    "display" : "BERACHI"
  },
  {
    "code" : "BERNABE RIVERA",
    "display" : "BERNABE RIVERA"
  },
  {
    "code" : "BERRONDO",
    "display" : "BERRONDO"
  },
  {
    "code" : "BERRUTI",
    "display" : "BERRUTI"
  },
  {
    "code" : "BIARRITZ",
    "display" : "BIARRITZ"
  },
  {
    "code" : "BIASSINI",
    "display" : "BIASSINI"
  },
  {
    "code" : "BIZCOCHO",
    "display" : "BIZCOCHO"
  },
  {
    "code" : "BLANCA ARENA",
    "display" : "BLANCA ARENA"
  },
  {
    "code" : "BLANCO",
    "display" : "BLANCO"
  },
  {
    "code" : "BLANES VIALE",
    "display" : "BLANES VIALE"
  },
  {
    "code" : "BLANQUILLO",
    "display" : "BLANQUILLO"
  },
  {
    "code" : "BLANQUILLO AL OESTE",
    "display" : "BLANQUILLO AL OESTE"
  },
  {
    "code" : "BLANQUILLOS",
    "display" : "BLANQUILLOS"
  },
  {
    "code" : "BOCA DEL CUFRE",
    "display" : "BOCA DEL CUFRE"
  },
  {
    "code" : "BOCA DEL ROSARIO",
    "display" : "BOCA DEL ROSARIO"
  },
  {
    "code" : "BOCA DEL ROSARIO OESTE",
    "display" : "BOCA DEL ROSARIO OESTE"
  },
  {
    "code" : "BOLIVAR",
    "display" : "BOLIVAR"
  },
  {
    "code" : "BONJOUR",
    "display" : "BONJOUR"
  },
  {
    "code" : "BORDENAVE",
    "display" : "BORDENAVE"
  },
  {
    "code" : "BRAZO ORIENTAL",
    "display" : "BRAZO ORIENTAL"
  },
  {
    "code" : "BRISAS DEL PLATA",
    "display" : "BRISAS DEL PLATA"
  },
  {
    "code" : "BUCEO",
    "display" : "BUCEO"
  },
  {
    "code" : "BUENA HORA",
    "display" : "BUENA HORA"
  },
  {
    "code" : "BUENA ORDEN AL NORTE",
    "display" : "BUENA ORDEN AL NORTE"
  },
  {
    "code" : "BUENA UNION",
    "display" : "BUENA UNION"
  },
  {
    "code" : "BUENA VISTA",
    "display" : "BUENA VISTA"
  },
  {
    "code" : "BUENOS AIRES",
    "display" : "BUENOS AIRES"
  },
  {
    "code" : "CAÃ‘ADA AMILIVIA",
    "display" : "CAÃ‘ADA AMILIVIA"
  },
  {
    "code" : "CAÃ‘ADA BELLACA",
    "display" : "CAÃ‘ADA BELLACA"
  },
  {
    "code" : "CAÃ‘ADA BRAVA",
    "display" : "CAÃ‘ADA BRAVA"
  },
  {
    "code" : "CAÃ‘ADA CARDOZO",
    "display" : "CAÃ‘ADA CARDOZO"
  },
  {
    "code" : "CAÃ‘ADA CHICA",
    "display" : "CAÃ‘ADA CHICA"
  },
  {
    "code" : "CAÃ‘ADA DE LA CRUZ",
    "display" : "CAÃ‘ADA DE LA CRUZ"
  },
  {
    "code" : "CAÃ‘ADA DE LAS PIEDRAS",
    "display" : "CAÃ‘ADA DE LAS PIEDRAS"
  },
  {
    "code" : "CAÃ‘ADA DE MONTAÃ‘O",
    "display" : "CAÃ‘ADA DE MONTAÃ‘O"
  },
  {
    "code" : "CAÃ‘ADA DE SANTOS",
    "display" : "CAÃ‘ADA DE SANTOS"
  },
  {
    "code" : "CAÃ‘ADA DEL ESTADO",
    "display" : "CAÃ‘ADA DEL ESTADO"
  },
  {
    "code" : "CAÃ‘ADA DEL PUEBLO",
    "display" : "CAÃ‘ADA DEL PUEBLO"
  },
  {
    "code" : "CAÃ‘ADA DEL SAUCE",
    "display" : "CAÃ‘ADA DEL SAUCE"
  },
  {
    "code" : "CAÃ‘ADA GRANDE",
    "display" : "CAÃ‘ADA GRANDE"
  },
  {
    "code" : "CAÃ‘ADA MAGALLANES",
    "display" : "CAÃ‘ADA MAGALLANES"
  },
  {
    "code" : "CAÃ‘ADA NIETO",
    "display" : "CAÃ‘ADA NIETO"
  },
  {
    "code" : "CAÃ‘ADA PARAGUAYA",
    "display" : "CAÃ‘ADA PARAGUAYA"
  },
  {
    "code" : "CAÃ‘ADA PRUDENCIO",
    "display" : "CAÃ‘ADA PRUDENCIO"
  },
  {
    "code" : "CAÃ‘ADA SARANDI",
    "display" : "CAÃ‘ADA SARANDI"
  },
  {
    "code" : "CAÃ‘AS",
    "display" : "CAÃ‘AS"
  },
  {
    "code" : "CAÃ‘ITAS",
    "display" : "CAÃ‘ITAS"
  },
  {
    "code" : "CABALLERO",
    "display" : "CABALLERO"
  },
  {
    "code" : "CABO POLONIO",
    "display" : "CABO POLONIO"
  },
  {
    "code" : "CAGANCHA",
    "display" : "CAGANCHA"
  },
  {
    "code" : "CAGANCHA CHICO",
    "display" : "CAGANCHA CHICO"
  },
  {
    "code" : "CAINSA",
    "display" : "CAINSA"
  },
  {
    "code" : "CAINZA CAMPO 3",
    "display" : "CAINZA CAMPO 3"
  },
  {
    "code" : "CALERA DE RECALDE",
    "display" : "CALERA DE RECALDE"
  },
  {
    "code" : "CALLERI",
    "display" : "CALLERI"
  },
  {
    "code" : "CALNU",
    "display" : "CALNU"
  },
  {
    "code" : "CAMAÃ‘O",
    "display" : "CAMAÃ‘O"
  },
  {
    "code" : "CAMINO DE LA CADENA",
    "display" : "CAMINO DE LA CADENA"
  },
  {
    "code" : "CAMINO DODERA",
    "display" : "CAMINO DODERA"
  },
  {
    "code" : "CAMINO LLOVERAS",
    "display" : "CAMINO LLOVERAS"
  },
  {
    "code" : "CAMPAMENTO",
    "display" : "CAMPAMENTO"
  },
  {
    "code" : "CAMPAMENTO ARTIGAS",
    "display" : "CAMPAMENTO ARTIGAS"
  },
  {
    "code" : "CAMPANA",
    "display" : "CAMPANA"
  },
  {
    "code" : "CAMPANERO",
    "display" : "CAMPANERO"
  },
  {
    "code" : "CAMPO DE TODOS",
    "display" : "CAMPO DE TODOS"
  },
  {
    "code" : "CAMPO MILITAR",
    "display" : "CAMPO MILITAR"
  },
  {
    "code" : "CANDIL",
    "display" : "CANDIL"
  },
  {
    "code" : "CANELON CHICO",
    "display" : "CANELON CHICO"
  },
  {
    "code" : "CANELON CHICO AL CENTRO",
    "display" : "CANELON CHICO AL CENTRO"
  },
  {
    "code" : "CANELON CHICO DE PROGRESO",
    "display" : "CANELON CHICO DE PROGRESO"
  },
  {
    "code" : "CANELON GRANDE",
    "display" : "CANELON GRANDE"
  },
  {
    "code" : "CANELON GRANDE DE PACHECO",
    "display" : "CANELON GRANDE DE PACHECO"
  },
  {
    "code" : "CANELON GRANDE NORTE",
    "display" : "CANELON GRANDE NORTE"
  },
  {
    "code" : "CANELONES",
    "display" : "CANELONES"
  },
  {
    "code" : "CANGUE",
    "display" : "CANGUE"
  },
  {
    "code" : "CANTERAS DE MARELLI",
    "display" : "CANTERAS DE MARELLI"
  },
  {
    "code" : "CANTERAS DEL VERDUN",
    "display" : "CANTERAS DEL VERDUN"
  },
  {
    "code" : "CAPACHO",
    "display" : "CAPACHO"
  },
  {
    "code" : "CAPILLA DE CELLA",
    "display" : "CAPILLA DE CELLA"
  },
  {
    "code" : "CAPILLA DE FARRUCO",
    "display" : "CAPILLA DE FARRUCO"
  },
  {
    "code" : "CAPILLA DEL SAUCE",
    "display" : "CAPILLA DEL SAUCE"
  },
  {
    "code" : "CAPON ALTO",
    "display" : "CAPON ALTO"
  },
  {
    "code" : "CAPURRO",
    "display" : "CAPURRO"
  },
  {
    "code" : "CAPURRO, BELLA VISTA",
    "display" : "CAPURRO, BELLA VISTA"
  },
  {
    "code" : "CARACOLES",
    "display" : "CARACOLES"
  },
  {
    "code" : "CARAGUATA",
    "display" : "CARAGUATA"
  },
  {
    "code" : "CARAGUATA AL NORTE",
    "display" : "CARAGUATA AL NORTE"
  },
  {
    "code" : "CARAPE",
    "display" : "CARAPE"
  },
  {
    "code" : "CARDAL",
    "display" : "CARDAL"
  },
  {
    "code" : "CARDONA",
    "display" : "CARDONA"
  },
  {
    "code" : "CARDOSO",
    "display" : "CARDOSO"
  },
  {
    "code" : "CARDOZO CHICO",
    "display" : "CARDOZO CHICO"
  },
  {
    "code" : "CARLOS CAL",
    "display" : "CARLOS CAL"
  },
  {
    "code" : "CARLOS REYLES",
    "display" : "CARLOS REYLES"
  },
  {
    "code" : "CARMEL",
    "display" : "CARMEL"
  },
  {
    "code" : "CARMELO",
    "display" : "CARMELO"
  },
  {
    "code" : "CARNALES",
    "display" : "CARNALES"
  },
  {
    "code" : "CARPINTERIA",
    "display" : "CARPINTERIA"
  },
  {
    "code" : "CARRASCO",
    "display" : "CARRASCO"
  },
  {
    "code" : "CARRASCO DEL SAUCE",
    "display" : "CARRASCO DEL SAUCE"
  },
  {
    "code" : "CARRASCO NORTE",
    "display" : "CARRASCO NORTE"
  },
  {
    "code" : "CARRETA QUEMADA",
    "display" : "CARRETA QUEMADA"
  },
  {
    "code" : "CARUMBE",
    "display" : "CARUMBE"
  },
  {
    "code" : "CASA BLANCA",
    "display" : "CASA BLANCA"
  },
  {
    "code" : "CASA DE LAS CRONICAS",
    "display" : "CASA DE LAS CRONICAS"
  },
  {
    "code" : "CASABO, PAJAS BLANCAS",
    "display" : "CASABO, PAJAS BLANCAS"
  },
  {
    "code" : "CASARINO",
    "display" : "CASARINO"
  },
  {
    "code" : "CASAVALLE",
    "display" : "CASAVALLE"
  },
  {
    "code" : "CASERIO EL CERRO",
    "display" : "CASERIO EL CERRO"
  },
  {
    "code" : "CASERIO LA FUNDACION",
    "display" : "CASERIO LA FUNDACION"
  },
  {
    "code" : "CASERIO LAS CAÃ‘AS",
    "display" : "CASERIO LAS CAÃ‘AS"
  },
  {
    "code" : "CASTILLOS",
    "display" : "CASTILLOS"
  },
  {
    "code" : "CASTRO, P. CASTELLANOS",
    "display" : "CASTRO, P. CASTELLANOS"
  },
  {
    "code" : "CASUPA",
    "display" : "CASUPA"
  },
  {
    "code" : "CASUPA CHICO",
    "display" : "CASUPA CHICO"
  },
  {
    "code" : "CATALAN GRANDE",
    "display" : "CATALAN GRANDE"
  },
  {
    "code" : "CATALAN VOLCAN",
    "display" : "CATALAN VOLCAN"
  },
  {
    "code" : "CEBOLLATI",
    "display" : "CEBOLLATI"
  },
  {
    "code" : "CEIBAL",
    "display" : "CEIBAL"
  },
  {
    "code" : "CELESTE",
    "display" : "CELESTE"
  },
  {
    "code" : "CEMENTERIO",
    "display" : "CEMENTERIO"
  },
  {
    "code" : "CENTRO",
    "display" : "CENTRO"
  },
  {
    "code" : "CENTURION",
    "display" : "CENTURION"
  },
  {
    "code" : "CERAMICAS DEL SUR",
    "display" : "CERAMICAS DEL SUR"
  },
  {
    "code" : "CERREZUELO",
    "display" : "CERREZUELO"
  },
  {
    "code" : "CERRILLADA",
    "display" : "CERRILLADA"
  },
  {
    "code" : "CERRILLADAS DE SAUCEDO",
    "display" : "CERRILLADAS DE SAUCEDO"
  },
  {
    "code" : "CERRILLOS AL OESTE",
    "display" : "CERRILLOS AL OESTE"
  },
  {
    "code" : "CERRILLOS AL SUR",
    "display" : "CERRILLOS AL SUR"
  },
  {
    "code" : "CERRITO",
    "display" : "CERRITO"
  },
  {
    "code" : "CERRO",
    "display" : "CERRO"
  },
  {
    "code" : "CERRO ALEGRE",
    "display" : "CERRO ALEGRE"
  },
  {
    "code" : "CERRO BATOVI",
    "display" : "CERRO BATOVI"
  },
  {
    "code" : "CERRO BLANCO DE CUÃ‘APIRU",
    "display" : "CERRO BLANCO DE CUÃ‘APIRU"
  },
  {
    "code" : "CERRO CAQUEIRO",
    "display" : "CERRO CAQUEIRO"
  },
  {
    "code" : "CERRO CARMELO",
    "display" : "CERRO CARMELO"
  },
  {
    "code" : "CERRO CHAPEU",
    "display" : "CERRO CHAPEU"
  },
  {
    "code" : "CERRO CHATO",
    "display" : "CERRO CHATO"
  },
  {
    "code" : "CERRO COLORADO",
    "display" : "CERRO COLORADO"
  },
  {
    "code" : "CERRO CONVENTO",
    "display" : "CERRO CONVENTO"
  },
  {
    "code" : "CERRO DE LA MACANA",
    "display" : "CERRO DE LA MACANA"
  },
  {
    "code" : "CERRO DE LAS ARMAS",
    "display" : "CERRO DE LAS ARMAS"
  },
  {
    "code" : "CERRO DE LAS CUENTAS",
    "display" : "CERRO DE LAS CUENTAS"
  },
  {
    "code" : "CERRO DE LOS ROCHA",
    "display" : "CERRO DE LOS ROCHA"
  },
  {
    "code" : "CERRO DE PASTOREO",
    "display" : "CERRO DE PASTOREO"
  },
  {
    "code" : "CERRO DE PEREIRA",
    "display" : "CERRO DE PEREIRA"
  },
  {
    "code" : "CERRO DE PESCADORES",
    "display" : "CERRO DE PESCADORES"
  },
  {
    "code" : "CERRO DEL ARBOLITO",
    "display" : "CERRO DEL ARBOLITO"
  },
  {
    "code" : "CERRO EJIDO",
    "display" : "CERRO EJIDO"
  },
  {
    "code" : "CERRO PELADO",
    "display" : "CERRO PELADO"
  },
  {
    "code" : "CERRO PELADO AL ESTE",
    "display" : "CERRO PELADO AL ESTE"
  },
  {
    "code" : "CERRO SAN EUGENIO",
    "display" : "CERRO SAN EUGENIO"
  },
  {
    "code" : "CERRO SIGNORELLI",
    "display" : "CERRO SIGNORELLI"
  },
  {
    "code" : "CERRO SOLITO",
    "display" : "CERRO SOLITO"
  },
  {
    "code" : "CERRO VERA",
    "display" : "CERRO VERA"
  },
  {
    "code" : "CERROS AZULES",
    "display" : "CERROS AZULES"
  },
  {
    "code" : "CERROS BLANCOS",
    "display" : "CERROS BLANCOS"
  },
  {
    "code" : "CERROS DE AMARO",
    "display" : "CERROS DE AMARO"
  },
  {
    "code" : "CERROS DE CLARA",
    "display" : "CERROS DE CLARA"
  },
  {
    "code" : "CERROS DE FLORIDA",
    "display" : "CERROS DE FLORIDA"
  },
  {
    "code" : "CERROS DE LA CALERA",
    "display" : "CERROS DE LA CALERA"
  },
  {
    "code" : "CERROS DE SAN JUAN",
    "display" : "CERROS DE SAN JUAN"
  },
  {
    "code" : "CERROS DE VERA",
    "display" : "CERROS DE VERA"
  },
  {
    "code" : "CERROS NEGROS",
    "display" : "CERROS NEGROS"
  },
  {
    "code" : "CHACRAS",
    "display" : "CHACRAS"
  },
  {
    "code" : "CHACRAS DE BELEN",
    "display" : "CHACRAS DE BELEN"
  },
  {
    "code" : "CHACRAS DE BORGHI",
    "display" : "CHACRAS DE BORGHI"
  },
  {
    "code" : "CHACRAS DE CONSTITUCION",
    "display" : "CHACRAS DE CONSTITUCION"
  },
  {
    "code" : "CHACRAS DE DOLORES",
    "display" : "CHACRAS DE DOLORES"
  },
  {
    "code" : "CHACRAS DE DURAZNO",
    "display" : "CHACRAS DE DURAZNO"
  },
  {
    "code" : "CHACRAS DE FLORIDA",
    "display" : "CHACRAS DE FLORIDA"
  },
  {
    "code" : "CHACRAS DE MELO",
    "display" : "CHACRAS DE MELO"
  },
  {
    "code" : "CHACRAS DE MERCEDES",
    "display" : "CHACRAS DE MERCEDES"
  },
  {
    "code" : "CHACRAS DE PAYSANDU",
    "display" : "CHACRAS DE PAYSANDU"
  },
  {
    "code" : "CHACRAS DE PAYSANDU NORTE",
    "display" : "CHACRAS DE PAYSANDU NORTE"
  },
  {
    "code" : "CHACRAS DE PAYSANDU SUR",
    "display" : "CHACRAS DE PAYSANDU SUR"
  },
  {
    "code" : "CHACRAS DEL PINTADO",
    "display" : "CHACRAS DEL PINTADO"
  },
  {
    "code" : "CHAMAME",
    "display" : "CHAMAME"
  },
  {
    "code" : "CHAMBERLAIN",
    "display" : "CHAMBERLAIN"
  },
  {
    "code" : "CHAMIZO",
    "display" : "CHAMIZO"
  },
  {
    "code" : "CHAMIZO CHICO",
    "display" : "CHAMIZO CHICO"
  },
  {
    "code" : "CHAPICUY",
    "display" : "CHAPICUY"
  },
  {
    "code" : "CHARATA",
    "display" : "CHARATA"
  },
  {
    "code" : "CHICO TORINO",
    "display" : "CHICO TORINO"
  },
  {
    "code" : "CHIFLERO",
    "display" : "CHIFLERO"
  },
  {
    "code" : "CHIHUAHUA",
    "display" : "CHIHUAHUA"
  },
  {
    "code" : "CHILCAS",
    "display" : "CHILCAS"
  },
  {
    "code" : "CHILENO",
    "display" : "CHILENO"
  },
  {
    "code" : "CHILENO CHICO",
    "display" : "CHILENO CHICO"
  },
  {
    "code" : "CHILENO GRANDE (AGUERO)",
    "display" : "CHILENO GRANDE (AGUERO)"
  },
  {
    "code" : "CHINGOLAS",
    "display" : "CHINGOLAS"
  },
  {
    "code" : "CHIRCA DE CARAGUATA",
    "display" : "CHIRCA DE CARAGUATA"
  },
  {
    "code" : "CHURCHILL",
    "display" : "CHURCHILL"
  },
  {
    "code" : "CHUY",
    "display" : "CHUY"
  },
  {
    "code" : "CINCO SAUCES",
    "display" : "CINCO SAUCES"
  },
  {
    "code" : "CIPA CEBOLLATI",
    "display" : "CIPA CEBOLLATI"
  },
  {
    "code" : "CIPA OLIMAR",
    "display" : "CIPA OLIMAR"
  },
  {
    "code" : "CIPA SECADOR",
    "display" : "CIPA SECADOR"
  },
  {
    "code" : "CITY GOLF",
    "display" : "CITY GOLF"
  },
  {
    "code" : "CIUDAD DE LA COSTA",
    "display" : "CIUDAD DE LA COSTA"
  },
  {
    "code" : "CIUDAD DEL PLATA",
    "display" : "CIUDAD DEL PLATA"
  },
  {
    "code" : "CIUDAD VIEJA",
    "display" : "CIUDAD VIEJA"
  },
  {
    "code" : "CLARA",
    "display" : "CLARA"
  },
  {
    "code" : "CLAVIJO",
    "display" : "CLAVIJO"
  },
  {
    "code" : "COCHENGO",
    "display" : "COCHENGO"
  },
  {
    "code" : "COIMBRA",
    "display" : "COIMBRA"
  },
  {
    "code" : "COLINAS DE CARRASCO",
    "display" : "COLINAS DE CARRASCO"
  },
  {
    "code" : "COLINAS DE SOLYMAR",
    "display" : "COLINAS DE SOLYMAR"
  },
  {
    "code" : "COLMAN",
    "display" : "COLMAN"
  },
  {
    "code" : "COLOLO",
    "display" : "COLOLO"
  },
  {
    "code" : "COLOLO TINOSA",
    "display" : "COLOLO TINOSA"
  },
  {
    "code" : "COLON",
    "display" : "COLON"
  },
  {
    "code" : "COLON CENTRO Y NOROESTE",
    "display" : "COLON CENTRO Y NOROESTE"
  },
  {
    "code" : "COLON SURESTE, ABAYUBA",
    "display" : "COLON SURESTE, ABAYUBA"
  },
  {
    "code" : "COLONIA 18 DE JULIO",
    "display" : "COLONIA 18 DE JULIO"
  },
  {
    "code" : "COLONIA ALEMANA",
    "display" : "COLONIA ALEMANA"
  },
  {
    "code" : "COLONIA AMERICA",
    "display" : "COLONIA AMERICA"
  },
  {
    "code" : "COLONIA ARROYO MALO",
    "display" : "COLONIA ARROYO MALO"
  },
  {
    "code" : "COLONIA ARRUE",
    "display" : "COLONIA ARRUE"
  },
  {
    "code" : "COLONIA CANGUE",
    "display" : "COLONIA CANGUE"
  },
  {
    "code" : "COLONIA CERES",
    "display" : "COLONIA CERES"
  },
  {
    "code" : "COLONIA CONCORDIA",
    "display" : "COLONIA CONCORDIA"
  },
  {
    "code" : "COLONIA COSMOPOLITA",
    "display" : "COLONIA COSMOPOLITA"
  },
  {
    "code" : "COLONIA DEL SACRAMENTO",
    "display" : "COLONIA DEL SACRAMENTO"
  },
  {
    "code" : "COLONIA DELTA",
    "display" : "COLONIA DELTA"
  },
  {
    "code" : "COLONIA DIAZ",
    "display" : "COLONIA DIAZ"
  },
  {
    "code" : "COLONIA DR. BERNARDO ETCHEPARE",
    "display" : "COLONIA DR. BERNARDO ETCHEPARE"
  },
  {
    "code" : "COLONIA EL OMBU",
    "display" : "COLONIA EL OMBU"
  },
  {
    "code" : "COLONIA ESPAÃ‘A",
    "display" : "COLONIA ESPAÃ‘A"
  },
  {
    "code" : "COLONIA ESPAÃ‘OLA",
    "display" : "COLONIA ESPAÃ‘OLA"
  },
  {
    "code" : "COLONIA ESTRELLA",
    "display" : "COLONIA ESTRELLA"
  },
  {
    "code" : "COLONIA FERNANDEZ CRESPO",
    "display" : "COLONIA FERNANDEZ CRESPO"
  },
  {
    "code" : "COLONIA GREISSING",
    "display" : "COLONIA GREISSING"
  },
  {
    "code" : "COLONIA ITALIA",
    "display" : "COLONIA ITALIA"
  },
  {
    "code" : "COLONIA ITAPEBI",
    "display" : "COLONIA ITAPEBI"
  },
  {
    "code" : "COLONIA J. SUAREZ",
    "display" : "COLONIA J. SUAREZ"
  },
  {
    "code" : "COLONIA JOHN F. KENNEDY",
    "display" : "COLONIA JOHN F. KENNEDY"
  },
  {
    "code" : "COLONIA JOSE ARTIGAS",
    "display" : "COLONIA JOSE ARTIGAS"
  },
  {
    "code" : "COLONIA JUAN MARIA PEREZ",
    "display" : "COLONIA JUAN MARIA PEREZ"
  },
  {
    "code" : "COLONIA JUNCAL",
    "display" : "COLONIA JUNCAL"
  },
  {
    "code" : "COLONIA LAMAS",
    "display" : "COLONIA LAMAS"
  },
  {
    "code" : "COLONIA LARRAÃ‘AGA",
    "display" : "COLONIA LARRAÃ‘AGA"
  },
  {
    "code" : "COLONIA LAS DELICIAS",
    "display" : "COLONIA LAS DELICIAS"
  },
  {
    "code" : "COLONIA LAVALLEJA",
    "display" : "COLONIA LAVALLEJA"
  },
  {
    "code" : "COLONIA MARIA TERESA",
    "display" : "COLONIA MARIA TERESA"
  },
  {
    "code" : "COLONIA MIGUELETE",
    "display" : "COLONIA MIGUELETE"
  },
  {
    "code" : "COLONIA NICOLICH",
    "display" : "COLONIA NICOLICH"
  },
  {
    "code" : "COLONIA OROZCO",
    "display" : "COLONIA OROZCO"
  },
  {
    "code" : "COLONIA OSIMANI",
    "display" : "COLONIA OSIMANI"
  },
  {
    "code" : "COLONIA PALMA",
    "display" : "COLONIA PALMA"
  },
  {
    "code" : "COLONIA PAYSANDU",
    "display" : "COLONIA PAYSANDU"
  },
  {
    "code" : "COLONIA PEIRANO",
    "display" : "COLONIA PEIRANO"
  },
  {
    "code" : "COLONIA PINTADO",
    "display" : "COLONIA PINTADO"
  },
  {
    "code" : "COLONIA QUEVEDO",
    "display" : "COLONIA QUEVEDO"
  },
  {
    "code" : "COLONIA RUBIO",
    "display" : "COLONIA RUBIO"
  },
  {
    "code" : "COLONIA SAN JOAQUIN",
    "display" : "COLONIA SAN JOAQUIN"
  },
  {
    "code" : "COLONIA SANCHEZ",
    "display" : "COLONIA SANCHEZ"
  },
  {
    "code" : "COLONIA SANTA BLANCA",
    "display" : "COLONIA SANTA BLANCA"
  },
  {
    "code" : "COLONIA SANTA CLARA",
    "display" : "COLONIA SANTA CLARA"
  },
  {
    "code" : "COLONIA SARANDI",
    "display" : "COLONIA SARANDI"
  },
  {
    "code" : "COLONIA TALICE",
    "display" : "COLONIA TALICE"
  },
  {
    "code" : "COLONIA TREINTA Y TRES ORIENTALES",
    "display" : "COLONIA TREINTA Y TRES ORIENTALES"
  },
  {
    "code" : "COLONIA URUGUAYA",
    "display" : "COLONIA URUGUAYA"
  },
  {
    "code" : "COLONIA VALDENSE",
    "display" : "COLONIA VALDENSE"
  },
  {
    "code" : "COLONIA VIÃ‘AR",
    "display" : "COLONIA VIÃ‘AR"
  },
  {
    "code" : "COLONIA WILSON",
    "display" : "COLONIA WILSON"
  },
  {
    "code" : "COLORADO CHICO",
    "display" : "COLORADO CHICO"
  },
  {
    "code" : "COLORADO Y BRUJAS",
    "display" : "COLORADO Y BRUJAS"
  },
  {
    "code" : "CONCHILLAS",
    "display" : "CONCHILLAS"
  },
  {
    "code" : "CONCILIACION",
    "display" : "CONCILIACION"
  },
  {
    "code" : "CONCORDIA",
    "display" : "CONCORDIA"
  },
  {
    "code" : "CONSEJO DEL NIÃ‘O",
    "display" : "CONSEJO DEL NIÃ‘O"
  },
  {
    "code" : "CONSTANCIA",
    "display" : "CONSTANCIA"
  },
  {
    "code" : "CONSTITUCION",
    "display" : "CONSTITUCION"
  },
  {
    "code" : "CONVENTOS",
    "display" : "CONVENTOS"
  },
  {
    "code" : "COQUIMBO",
    "display" : "COQUIMBO"
  },
  {
    "code" : "CORDON",
    "display" : "CORDON"
  },
  {
    "code" : "CORONADO",
    "display" : "CORONADO"
  },
  {
    "code" : "CORONILLA",
    "display" : "CORONILLA"
  },
  {
    "code" : "CORONILLA DE CORRALES",
    "display" : "CORONILLA DE CORRALES"
  },
  {
    "code" : "CORONILLA DEL MAR",
    "display" : "CORONILLA DEL MAR"
  },
  {
    "code" : "CORRAL DE PIEDRA",
    "display" : "CORRAL DE PIEDRA"
  },
  {
    "code" : "CORRALES DE CEBOLLATI",
    "display" : "CORRALES DE CEBOLLATI"
  },
  {
    "code" : "CORRALITO",
    "display" : "CORRALITO"
  },
  {
    "code" : "CORTE DE LA LEÃ‘A",
    "display" : "CORTE DE LA LEÃ‘A"
  },
  {
    "code" : "COSTA AZUL",
    "display" : "COSTA AZUL"
  },
  {
    "code" : "COSTA DE ARIAS",
    "display" : "COSTA DE ARIAS"
  },
  {
    "code" : "COSTA DE COLLA AL ESTE",
    "display" : "COSTA DE COLLA AL ESTE"
  },
  {
    "code" : "COSTA DE CUADRA",
    "display" : "COSTA DE CUADRA"
  },
  {
    "code" : "COSTA DE ILLESCAS",
    "display" : "COSTA DE ILLESCAS"
  },
  {
    "code" : "COSTA DE LA CRUZ",
    "display" : "COSTA DE LA CRUZ"
  },
  {
    "code" : "COSTA DE PANDO",
    "display" : "COSTA DE PANDO"
  },
  {
    "code" : "COSTA DE PANDO OLMOS",
    "display" : "COSTA DE PANDO OLMOS"
  },
  {
    "code" : "COSTA DE PANDO SAN BAUTISTA",
    "display" : "COSTA DE PANDO SAN BAUTISTA"
  },
  {
    "code" : "COSTA DE PANDO SAN JACINTO",
    "display" : "COSTA DE PANDO SAN JACINTO"
  },
  {
    "code" : "COSTA DE PARANA",
    "display" : "COSTA DE PARANA"
  },
  {
    "code" : "COSTA DE ROSARIO",
    "display" : "COSTA DE ROSARIO"
  },
  {
    "code" : "COSTA DE SACRA",
    "display" : "COSTA DE SACRA"
  },
  {
    "code" : "COSTA DE TARARIRAS",
    "display" : "COSTA DE TARARIRAS"
  },
  {
    "code" : "COSTA DE VACAS",
    "display" : "COSTA DE VACAS"
  },
  {
    "code" : "COSTA DEL AGUILA",
    "display" : "COSTA DEL AGUILA"
  },
  {
    "code" : "COSTA DEL LENGUAZO",
    "display" : "COSTA DEL LENGUAZO"
  },
  {
    "code" : "COSTA DEL MAURICIO",
    "display" : "COSTA DEL MAURICIO"
  },
  {
    "code" : "COSTA DEL NAVARRO",
    "display" : "COSTA DEL NAVARRO"
  },
  {
    "code" : "COSTA DEL PANTANOSO",
    "display" : "COSTA DEL PANTANOSO"
  },
  {
    "code" : "COSTA DEL SAUCE",
    "display" : "COSTA DEL SAUCE"
  },
  {
    "code" : "COSTA DEL TALA",
    "display" : "COSTA DEL TALA"
  },
  {
    "code" : "COSTA DEL TALA ESTE",
    "display" : "COSTA DEL TALA ESTE"
  },
  {
    "code" : "COSTA DEL TALA NORTE",
    "display" : "COSTA DEL TALA NORTE"
  },
  {
    "code" : "COSTA Y GUILLAMON",
    "display" : "COSTA Y GUILLAMON"
  },
  {
    "code" : "COSTAS DE ARIAS",
    "display" : "COSTAS DE ARIAS"
  },
  {
    "code" : "COSTAS DE CARAGUATA",
    "display" : "COSTAS DE CARAGUATA"
  },
  {
    "code" : "COSTAS DE CEBOLLATI",
    "display" : "COSTAS DE CEBOLLATI"
  },
  {
    "code" : "COSTAS DE CHAMIZO",
    "display" : "COSTAS DE CHAMIZO"
  },
  {
    "code" : "COSTAS DE CHAMIZO GRANDE",
    "display" : "COSTAS DE CHAMIZO GRANDE"
  },
  {
    "code" : "COSTAS DE CORRALES",
    "display" : "COSTAS DE CORRALES"
  },
  {
    "code" : "COSTAS DE CUÃ‘APIRU",
    "display" : "COSTAS DE CUÃ‘APIRU"
  },
  {
    "code" : "COSTAS DE JOSE IGNACIO",
    "display" : "COSTAS DE JOSE IGNACIO"
  },
  {
    "code" : "COSTAS DE JUAN GONZALEZ",
    "display" : "COSTAS DE JUAN GONZALEZ"
  },
  {
    "code" : "COSTAS DE MACIEL",
    "display" : "COSTAS DE MACIEL"
  },
  {
    "code" : "COSTAS DE PEDERNAL",
    "display" : "COSTAS DE PEDERNAL"
  },
  {
    "code" : "COSTAS DE PEREIRA",
    "display" : "COSTAS DE PEREIRA"
  },
  {
    "code" : "COSTAS DE POLONIA",
    "display" : "COSTAS DE POLONIA"
  },
  {
    "code" : "COSTAS DE SAN JOSE",
    "display" : "COSTAS DE SAN JOSE"
  },
  {
    "code" : "COSTAS DE SAN JUAN",
    "display" : "COSTAS DE SAN JUAN"
  },
  {
    "code" : "COSTAS DE SANTA LUCIA",
    "display" : "COSTAS DE SANTA LUCIA"
  },
  {
    "code" : "COSTAS DE SANTA LUCIA CHICO",
    "display" : "COSTAS DE SANTA LUCIA CHICO"
  },
  {
    "code" : "COSTAS DE SOLIS",
    "display" : "COSTAS DE SOLIS"
  },
  {
    "code" : "COSTAS DE TACUARI",
    "display" : "COSTAS DE TACUARI"
  },
  {
    "code" : "COSTAS DE TRES CRUCES",
    "display" : "COSTAS DE TRES CRUCES"
  },
  {
    "code" : "COSTAS DEL AMARILLO",
    "display" : "COSTAS DEL AMARILLO"
  },
  {
    "code" : "COSTAS DEL ARROYO MALO",
    "display" : "COSTAS DEL ARROYO MALO"
  },
  {
    "code" : "COSTAS DEL COLORADO",
    "display" : "COSTAS DEL COLORADO"
  },
  {
    "code" : "COSTAS DEL COLORADO ESTE",
    "display" : "COSTAS DEL COLORADO ESTE"
  },
  {
    "code" : "COSTAS DEL PERDIDO",
    "display" : "COSTAS DEL PERDIDO"
  },
  {
    "code" : "COSTAS DEL PINTADO",
    "display" : "COSTAS DEL PINTADO"
  },
  {
    "code" : "COSTAS DEL SANTA LUCIA GRANDE",
    "display" : "COSTAS DEL SANTA LUCIA GRANDE"
  },
  {
    "code" : "COSTAS DEL SARANDI",
    "display" : "COSTAS DEL SARANDI"
  },
  {
    "code" : "COSTAS DEL SAUCE",
    "display" : "COSTAS DEL SAUCE"
  },
  {
    "code" : "COSTAS DEL SOLDADO",
    "display" : "COSTAS DEL SOLDADO"
  },
  {
    "code" : "COSTAS DEL TALA",
    "display" : "COSTAS DEL TALA"
  },
  {
    "code" : "COYO MARTINEZ",
    "display" : "COYO MARTINEZ"
  },
  {
    "code" : "CRUZ DE LOS CAMINOS",
    "display" : "CRUZ DE LOS CAMINOS"
  },
  {
    "code" : "CRUZ DE PIEDRA",
    "display" : "CRUZ DE PIEDRA"
  },
  {
    "code" : "CRUZ DE SAN PEDRO",
    "display" : "CRUZ DE SAN PEDRO"
  },
  {
    "code" : "CUÃ‘APIRU",
    "display" : "CUÃ‘APIRU"
  },
  {
    "code" : "CUAREIM",
    "display" : "CUAREIM"
  },
  {
    "code" : "CUARO",
    "display" : "CUARO"
  },
  {
    "code" : "CUATRO BOCAS DE BUENA VISTA",
    "display" : "CUATRO BOCAS DE BUENA VISTA"
  },
  {
    "code" : "CUCHILLA ALTA",
    "display" : "CUCHILLA ALTA"
  },
  {
    "code" : "CUCHILLA ALTA Y EL GALEON",
    "display" : "CUCHILLA ALTA Y EL GALEON"
  },
  {
    "code" : "CUCHILLA CABO DE HORNOS",
    "display" : "CUCHILLA CABO DE HORNOS"
  },
  {
    "code" : "CUCHILLA CAMBOTA",
    "display" : "CUCHILLA CAMBOTA"
  },
  {
    "code" : "CUCHILLA DE BURICAYUPI",
    "display" : "CUCHILLA DE BURICAYUPI"
  },
  {
    "code" : "CUCHILLA DE DIONISIO",
    "display" : "CUCHILLA DE DIONISIO"
  },
  {
    "code" : "CUCHILLA DE FUEGO",
    "display" : "CUCHILLA DE FUEGO"
  },
  {
    "code" : "CUCHILLA DE GARZON",
    "display" : "CUCHILLA DE GARZON"
  },
  {
    "code" : "CUCHILLA DE GUAVIYU",
    "display" : "CUCHILLA DE GUAVIYU"
  },
  {
    "code" : "CUCHILLA DE LA CASA DE PIEDRA",
    "display" : "CUCHILLA DE LA CASA DE PIEDRA"
  },
  {
    "code" : "CUCHILLA DE LA PALMA",
    "display" : "CUCHILLA DE LA PALMA"
  },
  {
    "code" : "CUCHILLA DE LAURELES",
    "display" : "CUCHILLA DE LAURELES"
  },
  {
    "code" : "CUCHILLA DE MACHIN",
    "display" : "CUCHILLA DE MACHIN"
  },
  {
    "code" : "CUCHILLA DE MELO",
    "display" : "CUCHILLA DE MELO"
  },
  {
    "code" : "CUCHILLA DE OLMOS",
    "display" : "CUCHILLA DE OLMOS"
  },
  {
    "code" : "CUCHILLA DE PERALTA",
    "display" : "CUCHILLA DE PERALTA"
  },
  {
    "code" : "CUCHILLA DE PEREIRA",
    "display" : "CUCHILLA DE PEREIRA"
  },
  {
    "code" : "CUCHILLA DE RAMIREZ",
    "display" : "CUCHILLA DE RAMIREZ"
  },
  {
    "code" : "CUCHILLA DE ROCHA",
    "display" : "CUCHILLA DE ROCHA"
  },
  {
    "code" : "CUCHILLA DE SIERRA",
    "display" : "CUCHILLA DE SIERRA"
  },
  {
    "code" : "CUCHILLA DE TRES CERROS",
    "display" : "CUCHILLA DE TRES CERROS"
  },
  {
    "code" : "CUCHILLA DE VILLASBOAS",
    "display" : "CUCHILLA DE VILLASBOAS"
  },
  {
    "code" : "CUCHILLA DE YAGUARI",
    "display" : "CUCHILLA DE YAGUARI"
  },
  {
    "code" : "CUCHILLA DE ZEBALLOS",
    "display" : "CUCHILLA DE ZEBALLOS"
  },
  {
    "code" : "CUCHILLA DEL ARBOLITO",
    "display" : "CUCHILLA DEL ARBOLITO"
  },
  {
    "code" : "CUCHILLA DEL CARMEN",
    "display" : "CUCHILLA DEL CARMEN"
  },
  {
    "code" : "CUCHILLA DEL CORRALITO",
    "display" : "CUCHILLA DEL CORRALITO"
  },
  {
    "code" : "CUCHILLA DEL OMBU",
    "display" : "CUCHILLA DEL OMBU"
  },
  {
    "code" : "CUCHILLA DEL PARAISO",
    "display" : "CUCHILLA DEL PARAISO"
  },
  {
    "code" : "CUCHILLA DEL PERDIDO",
    "display" : "CUCHILLA DEL PERDIDO"
  },
  {
    "code" : "CUCHILLA DEL RINCON",
    "display" : "CUCHILLA DEL RINCON"
  },
  {
    "code" : "CUCHILLA DEL SALTO",
    "display" : "CUCHILLA DEL SALTO"
  },
  {
    "code" : "CUCHILLA DEL VICHADERO",
    "display" : "CUCHILLA DEL VICHADERO"
  },
  {
    "code" : "CUCHILLA MANGUERAS",
    "display" : "CUCHILLA MANGUERAS"
  },
  {
    "code" : "CUCHILLA PERALTA",
    "display" : "CUCHILLA PERALTA"
  },
  {
    "code" : "CUCHILLA SAN JOSE",
    "display" : "CUCHILLA SAN JOSE"
  },
  {
    "code" : "CUCHILLA SANTO DOMINGO",
    "display" : "CUCHILLA SANTO DOMINGO"
  },
  {
    "code" : "CUCHILLA SECA",
    "display" : "CUCHILLA SECA"
  },
  {
    "code" : "CUCHILLA VERDE",
    "display" : "CUCHILLA VERDE"
  },
  {
    "code" : "CUEVA DEL TIGRE",
    "display" : "CUEVA DEL TIGRE"
  },
  {
    "code" : "CUFRE",
    "display" : "CUFRE"
  },
  {
    "code" : "CUMBRES DE CARRASCO",
    "display" : "CUMBRES DE CARRASCO"
  },
  {
    "code" : "CURTICEIRAS",
    "display" : "CURTICEIRAS"
  },
  {
    "code" : "CURTINA",
    "display" : "CURTINA"
  },
  {
    "code" : "CURTUME",
    "display" : "CURTUME"
  },
  {
    "code" : "CURUPI",
    "display" : "CURUPI"
  },
  {
    "code" : "DE DIOS",
    "display" : "DE DIOS"
  },
  {
    "code" : "DELTA EL TIGRE",
    "display" : "DELTA EL TIGRE"
  },
  {
    "code" : "DIAMANTE DE LA PEDRERA",
    "display" : "DIAMANTE DE LA PEDRERA"
  },
  {
    "code" : "DIEGO LAMAS",
    "display" : "DIEGO LAMAS"
  },
  {
    "code" : "DOCTOR FRANCISCO SOCA",
    "display" : "DOCTOR FRANCISCO SOCA"
  },
  {
    "code" : "DOLORES",
    "display" : "DOLORES"
  },
  {
    "code" : "DON ESTEBAN",
    "display" : "DON ESTEBAN"
  },
  {
    "code" : "DR. A. GALLINAL",
    "display" : "DR. A. GALLINAL"
  },
  {
    "code" : "DURAZNERO",
    "display" : "DURAZNERO"
  },
  {
    "code" : "DURAZNITO",
    "display" : "DURAZNITO"
  },
  {
    "code" : "DURAZNO",
    "display" : "DURAZNO"
  },
  {
    "code" : "ECHEVARRIA",
    "display" : "ECHEVARRIA"
  },
  {
    "code" : "ECILDA PAULLIER",
    "display" : "ECILDA PAULLIER"
  },
  {
    "code" : "EDEN ROCK",
    "display" : "EDEN ROCK"
  },
  {
    "code" : "EGAÃ‘A",
    "display" : "EGAÃ‘A"
  },
  {
    "code" : "EJIDO DE TREINTA Y TRES",
    "display" : "EJIDO DE TREINTA Y TRES"
  },
  {
    "code" : "EL ABROJAL",
    "display" : "EL ABROJAL"
  },
  {
    "code" : "EL AGUILA",
    "display" : "EL AGUILA"
  },
  {
    "code" : "EL ALTO",
    "display" : "EL ALTO"
  },
  {
    "code" : "EL BAÃ‘ADO",
    "display" : "EL BAÃ‘ADO"
  },
  {
    "code" : "EL BELLACO",
    "display" : "EL BELLACO"
  },
  {
    "code" : "EL BOSQUE",
    "display" : "EL BOSQUE"
  },
  {
    "code" : "EL BOSQUE DE LAGOMAR",
    "display" : "EL BOSQUE DE LAGOMAR"
  },
  {
    "code" : "EL BOSQUE DE SOLYMAR",
    "display" : "EL BOSQUE DE SOLYMAR"
  },
  {
    "code" : "EL CAÃ‘O",
    "display" : "EL CAÃ‘O"
  },
  {
    "code" : "EL CANELON",
    "display" : "EL CANELON"
  },
  {
    "code" : "EL CARMEN",
    "display" : "EL CARMEN"
  },
  {
    "code" : "EL CATETE",
    "display" : "EL CATETE"
  },
  {
    "code" : "EL CEIBO",
    "display" : "EL CEIBO"
  },
  {
    "code" : "EL CERRO",
    "display" : "EL CERRO"
  },
  {
    "code" : "EL CHACO",
    "display" : "EL CHACO"
  },
  {
    "code" : "EL CHILENO",
    "display" : "EL CHILENO"
  },
  {
    "code" : "EL CHIMANGO",
    "display" : "EL CHIMANGO"
  },
  {
    "code" : "EL CHORRO",
    "display" : "EL CHORRO"
  },
  {
    "code" : "EL COLORADO",
    "display" : "EL COLORADO"
  },
  {
    "code" : "EL COLORADO DE MIGUES",
    "display" : "EL COLORADO DE MIGUES"
  },
  {
    "code" : "EL COLORADO SAN BAUTISTA",
    "display" : "EL COLORADO SAN BAUTISTA"
  },
  {
    "code" : "EL CORONILLA",
    "display" : "EL CORONILLA"
  },
  {
    "code" : "EL CUADRO",
    "display" : "EL CUADRO"
  },
  {
    "code" : "EL DORADO",
    "display" : "EL DORADO"
  },
  {
    "code" : "EL DURAZNAL",
    "display" : "EL DURAZNAL"
  },
  {
    "code" : "EL EDEN",
    "display" : "EL EDEN"
  },
  {
    "code" : "EL EMPALME",
    "display" : "EL EMPALME"
  },
  {
    "code" : "EL ENSUEÃ‘O",
    "display" : "EL ENSUEÃ‘O"
  },
  {
    "code" : "EL ESPINILLAR",
    "display" : "EL ESPINILLAR"
  },
  {
    "code" : "EL EUCALIPTUS",
    "display" : "EL EUCALIPTUS"
  },
  {
    "code" : "EL FARO",
    "display" : "EL FARO"
  },
  {
    "code" : "EL GALEON",
    "display" : "EL GALEON"
  },
  {
    "code" : "EL GENERAL",
    "display" : "EL GENERAL"
  },
  {
    "code" : "EL HORNO",
    "display" : "EL HORNO"
  },
  {
    "code" : "EL MELLADO",
    "display" : "EL MELLADO"
  },
  {
    "code" : "EL PALMITO",
    "display" : "EL PALMITO"
  },
  {
    "code" : "EL PERDIDO",
    "display" : "EL PERDIDO"
  },
  {
    "code" : "EL PINAR",
    "display" : "EL PINAR"
  },
  {
    "code" : "EL PROGRESO",
    "display" : "EL PROGRESO"
  },
  {
    "code" : "EL QUIJOTE",
    "display" : "EL QUIJOTE"
  },
  {
    "code" : "EL QUINTON",
    "display" : "EL QUINTON"
  },
  {
    "code" : "EL SEMILLERO",
    "display" : "EL SEMILLERO"
  },
  {
    "code" : "EL SOLDADO",
    "display" : "EL SOLDADO"
  },
  {
    "code" : "EL SURCO",
    "display" : "EL SURCO"
  },
  {
    "code" : "EL TALA",
    "display" : "EL TALA"
  },
  {
    "code" : "EL TARUGO",
    "display" : "EL TARUGO"
  },
  {
    "code" : "EL TESORO",
    "display" : "EL TESORO"
  },
  {
    "code" : "EL TIGRE",
    "display" : "EL TIGRE"
  },
  {
    "code" : "EL TOTORAL",
    "display" : "EL TOTORAL"
  },
  {
    "code" : "ELIAS REGULES",
    "display" : "ELIAS REGULES"
  },
  {
    "code" : "EMPALME DE VELAZQUEZ",
    "display" : "EMPALME DE VELAZQUEZ"
  },
  {
    "code" : "EMPALME DOGLIOTTI",
    "display" : "EMPALME DOGLIOTTI"
  },
  {
    "code" : "EMPALME NICOLICH",
    "display" : "EMPALME NICOLICH"
  },
  {
    "code" : "EMPALME OLMOS",
    "display" : "EMPALME OLMOS"
  },
  {
    "code" : "EMPALME SAUCE",
    "display" : "EMPALME SAUCE"
  },
  {
    "code" : "ESCUDERO",
    "display" : "ESCUDERO"
  },
  {
    "code" : "ESCUELA DE AGRONOMIA",
    "display" : "ESCUELA DE AGRONOMIA"
  },
  {
    "code" : "ESPERANZA",
    "display" : "ESPERANZA"
  },
  {
    "code" : "ESPINILLO",
    "display" : "ESPINILLO"
  },
  {
    "code" : "ESPUELITAS",
    "display" : "ESPUELITAS"
  },
  {
    "code" : "ESQUINA GONZALEZ",
    "display" : "ESQUINA GONZALEZ"
  },
  {
    "code" : "ESTACION ANDREONI",
    "display" : "ESTACION ANDREONI"
  },
  {
    "code" : "ESTACION ATLANTIDA",
    "display" : "ESTACION ATLANTIDA"
  },
  {
    "code" : "ESTACION CAPILLA DEL SAUCE",
    "display" : "ESTACION CAPILLA DEL SAUCE"
  },
  {
    "code" : "ESTACION CHILENO",
    "display" : "ESTACION CHILENO"
  },
  {
    "code" : "ESTACION EXPERIMENTAL \"LA ESTANZUELA\"",
    "display" : "ESTACION EXPERIMENTAL \"LA ESTANZUELA\""
  },
  {
    "code" : "ESTACION FRANCIA",
    "display" : "ESTACION FRANCIA"
  },
  {
    "code" : "ESTACION LA FLORESTA",
    "display" : "ESTACION LA FLORESTA"
  },
  {
    "code" : "ESTACION MENENDEZ",
    "display" : "ESTACION MENENDEZ"
  },
  {
    "code" : "ESTACION MIGUES",
    "display" : "ESTACION MIGUES"
  },
  {
    "code" : "ESTACION ORTIZ",
    "display" : "ESTACION ORTIZ"
  },
  {
    "code" : "ESTACION PEDRERA",
    "display" : "ESTACION PEDRERA"
  },
  {
    "code" : "ESTACION PIEDRAS DE AFILAR",
    "display" : "ESTACION PIEDRAS DE AFILAR"
  },
  {
    "code" : "ESTACION PORVENIR",
    "display" : "ESTACION PORVENIR"
  },
  {
    "code" : "ESTACION RODRIGUEZ",
    "display" : "ESTACION RODRIGUEZ"
  },
  {
    "code" : "ESTACION SOLIS",
    "display" : "ESTACION SOLIS"
  },
  {
    "code" : "ESTACION TAPIA",
    "display" : "ESTACION TAPIA"
  },
  {
    "code" : "ESTANCIA ANCHORENA",
    "display" : "ESTANCIA ANCHORENA"
  },
  {
    "code" : "ESTANCIA VICHADERO",
    "display" : "ESTANCIA VICHADERO"
  },
  {
    "code" : "ESTANQUE DE PANDO",
    "display" : "ESTANQUE DE PANDO"
  },
  {
    "code" : "ESTIBA",
    "display" : "ESTIBA"
  },
  {
    "code" : "ETCHEMENDI",
    "display" : "ETCHEMENDI"
  },
  {
    "code" : "FAGUNDEZ",
    "display" : "FAGUNDEZ"
  },
  {
    "code" : "FAJARDO",
    "display" : "FAJARDO"
  },
  {
    "code" : "FAJINA",
    "display" : "FAJINA"
  },
  {
    "code" : "FALDA DE SIERRA DE LOS RIOS",
    "display" : "FALDA DE SIERRA DE LOS RIOS"
  },
  {
    "code" : "FARO JOSE IGNACIO",
    "display" : "FARO JOSE IGNACIO"
  },
  {
    "code" : "FARO JOSE IGNACIO NORTE",
    "display" : "FARO JOSE IGNACIO NORTE"
  },
  {
    "code" : "FELICIANO",
    "display" : "FELICIANO"
  },
  {
    "code" : "FERREIRA",
    "display" : "FERREIRA"
  },
  {
    "code" : "FERRER",
    "display" : "FERRER"
  },
  {
    "code" : "FERRIZO",
    "display" : "FERRIZO"
  },
  {
    "code" : "FLOR DE MAROÃ‘AS",
    "display" : "FLOR DE MAROÃ‘AS"
  },
  {
    "code" : "FLORENCIO SANCHEZ",
    "display" : "FLORENCIO SANCHEZ"
  },
  {
    "code" : "FLORIDA",
    "display" : "FLORIDA"
  },
  {
    "code" : "FONSECA",
    "display" : "FONSECA"
  },
  {
    "code" : "FORTIN DE SAN MIGUEL",
    "display" : "FORTIN DE SAN MIGUEL"
  },
  {
    "code" : "FORTIN DE SANTA ROSA",
    "display" : "FORTIN DE SANTA ROSA"
  },
  {
    "code" : "FRACC. CAMINO MALDONADO",
    "display" : "FRACC. CAMINO MALDONADO"
  },
  {
    "code" : "FRACC. CNO. ANDALUZ Y R.84",
    "display" : "FRACC. CNO. ANDALUZ Y R.84"
  },
  {
    "code" : "FRACC. PROGRESO",
    "display" : "FRACC. PROGRESO"
  },
  {
    "code" : "FRACC. SOBRE RUTA 74",
    "display" : "FRACC. SOBRE RUTA 74"
  },
  {
    "code" : "FRAILE MUERTO",
    "display" : "FRAILE MUERTO"
  },
  {
    "code" : "FRANQUIA",
    "display" : "FRANQUIA"
  },
  {
    "code" : "FRAY BENTOS",
    "display" : "FRAY BENTOS"
  },
  {
    "code" : "FRAY MARCOS",
    "display" : "FRAY MARCOS"
  },
  {
    "code" : "FRIGORIFICO MODELO",
    "display" : "FRIGORIFICO MODELO"
  },
  {
    "code" : "GAETAN (CUCHILLA DE CARBAJAL)",
    "display" : "GAETAN (CUCHILLA DE CARBAJAL)"
  },
  {
    "code" : "GALLINAL",
    "display" : "GALLINAL"
  },
  {
    "code" : "GANEN",
    "display" : "GANEN"
  },
  {
    "code" : "GARAO",
    "display" : "GARAO"
  },
  {
    "code" : "GARIBALDI",
    "display" : "GARIBALDI"
  },
  {
    "code" : "GARULA",
    "display" : "GARULA"
  },
  {
    "code" : "GARZON",
    "display" : "GARZON"
  },
  {
    "code" : "GARZON ABAJO",
    "display" : "GARZON ABAJO"
  },
  {
    "code" : "GARZON AL MEDIO",
    "display" : "GARZON AL MEDIO"
  },
  {
    "code" : "GARZON ARRIBA",
    "display" : "GARZON ARRIBA"
  },
  {
    "code" : "GERONA",
    "display" : "GERONA"
  },
  {
    "code" : "GIL",
    "display" : "GIL"
  },
  {
    "code" : "GOÃ‘I",
    "display" : "GOÃ‘I"
  },
  {
    "code" : "GODOY",
    "display" : "GODOY"
  },
  {
    "code" : "GONZALEZ",
    "display" : "GONZALEZ"
  },
  {
    "code" : "GRAL. ENRIQUE MARTINEZ",
    "display" : "GRAL. ENRIQUE MARTINEZ"
  },
  {
    "code" : "GRANJA DE ACEGUA",
    "display" : "GRANJA DE ACEGUA"
  },
  {
    "code" : "GRANJA PALLERO",
    "display" : "GRANJA PALLERO"
  },
  {
    "code" : "GREGORIO AZNAREZ",
    "display" : "GREGORIO AZNAREZ"
  },
  {
    "code" : "GRITO DE ASENCIO",
    "display" : "GRITO DE ASENCIO"
  },
  {
    "code" : "GUARDIA VIEJA",
    "display" : "GUARDIA VIEJA"
  },
  {
    "code" : "GUAVIYU",
    "display" : "GUAVIYU"
  },
  {
    "code" : "GUAVIYU DE ARAPEY",
    "display" : "GUAVIYU DE ARAPEY"
  },
  {
    "code" : "GUAVIYU DE QUEBRACHO",
    "display" : "GUAVIYU DE QUEBRACHO"
  },
  {
    "code" : "GUAYABOS",
    "display" : "GUAYABOS"
  },
  {
    "code" : "GUAYCURU",
    "display" : "GUAYCURU"
  },
  {
    "code" : "GUAZUNAMBI",
    "display" : "GUAZUNAMBI"
  },
  {
    "code" : "GUAZUVIRA",
    "display" : "GUAZUVIRA"
  },
  {
    "code" : "GUAZUVIRA NUEVO",
    "display" : "GUAZUVIRA NUEVO"
  },
  {
    "code" : "GUICHON",
    "display" : "GUICHON"
  },
  {
    "code" : "GUTIERREZ",
    "display" : "GUTIERREZ"
  },
  {
    "code" : "GUYUBIRA",
    "display" : "GUYUBIRA"
  },
  {
    "code" : "HARAS DEL LAGO",
    "display" : "HARAS DEL LAGO"
  },
  {
    "code" : "HERIBERTO",
    "display" : "HERIBERTO"
  },
  {
    "code" : "HERNANDARIAS",
    "display" : "HERNANDARIAS"
  },
  {
    "code" : "HIGUERAS DE CARPINTERIA",
    "display" : "HIGUERAS DE CARPINTERIA"
  },
  {
    "code" : "HIGUERITAS",
    "display" : "HIGUERITAS"
  },
  {
    "code" : "HIGUERONES",
    "display" : "HIGUERONES"
  },
  {
    "code" : "HIPODROMO",
    "display" : "HIPODROMO"
  },
  {
    "code" : "HOSPITAL",
    "display" : "HOSPITAL"
  },
  {
    "code" : "ILLESCAS",
    "display" : "ILLESCAS"
  },
  {
    "code" : "INDEPENDENCIA",
    "display" : "INDEPENDENCIA"
  },
  {
    "code" : "INDIA MUERTA",
    "display" : "INDIA MUERTA"
  },
  {
    "code" : "INFIERNILLO",
    "display" : "INFIERNILLO"
  },
  {
    "code" : "INSTITUTO ADVENTISTA",
    "display" : "INSTITUTO ADVENTISTA"
  },
  {
    "code" : "ISIDORO NOBLIA",
    "display" : "ISIDORO NOBLIA"
  },
  {
    "code" : "ISLA DE ARGUELLES",
    "display" : "ISLA DE ARGUELLES"
  },
  {
    "code" : "ISLA NEGRA",
    "display" : "ISLA NEGRA"
  },
  {
    "code" : "ISMAEL CORTINAS",
    "display" : "ISMAEL CORTINAS"
  },
  {
    "code" : "ITAPEBI",
    "display" : "ITAPEBI"
  },
  {
    "code" : "ITUZAINGO",
    "display" : "ITUZAINGO"
  },
  {
    "code" : "JACINTO VERA",
    "display" : "JACINTO VERA"
  },
  {
    "code" : "JARDINES DE PANDO",
    "display" : "JARDINES DE PANDO"
  },
  {
    "code" : "JARDINES DEL HIPODROMO",
    "display" : "JARDINES DEL HIPODROMO"
  },
  {
    "code" : "JAUREGUIBERRY",
    "display" : "JAUREGUIBERRY"
  },
  {
    "code" : "JAVIER DE VIANA",
    "display" : "JAVIER DE VIANA"
  },
  {
    "code" : "JESUS MARIA",
    "display" : "JESUS MARIA"
  },
  {
    "code" : "JOAQUIN SUAREZ",
    "display" : "JOAQUIN SUAREZ"
  },
  {
    "code" : "JOSE BATLLE Y ORDOÃ‘EZ",
    "display" : "JOSE BATLLE Y ORDOÃ‘EZ"
  },
  {
    "code" : "JOSE ENRIQUE RODO",
    "display" : "JOSE ENRIQUE RODO"
  },
  {
    "code" : "JOSE IGNACIO",
    "display" : "JOSE IGNACIO"
  },
  {
    "code" : "JOSE PEDRO VARELA",
    "display" : "JOSE PEDRO VARELA"
  },
  {
    "code" : "JUAN CARLOS CASEROS",
    "display" : "JUAN CARLOS CASEROS"
  },
  {
    "code" : "JUAN GONZALEZ",
    "display" : "JUAN GONZALEZ"
  },
  {
    "code" : "JUAN JACKSON",
    "display" : "JUAN JACKSON"
  },
  {
    "code" : "JUAN JOSE CASTRO",
    "display" : "JUAN JOSE CASTRO"
  },
  {
    "code" : "JUAN LACAZE",
    "display" : "JUAN LACAZE"
  },
  {
    "code" : "JUAN SOLER",
    "display" : "JUAN SOLER"
  },
  {
    "code" : "JUANICO",
    "display" : "JUANICO"
  },
  {
    "code" : "JULIO MARIA SANZ",
    "display" : "JULIO MARIA SANZ"
  },
  {
    "code" : "JUNCAL",
    "display" : "JUNCAL"
  },
  {
    "code" : "KILOMETRO 18",
    "display" : "KILOMETRO 18"
  },
  {
    "code" : "KIYU - ORDEIG",
    "display" : "KIYU - ORDEIG"
  },
  {
    "code" : "LA AGUADA",
    "display" : "LA AGUADA"
  },
  {
    "code" : "LA AGUADA Y COSTA AZUL",
    "display" : "LA AGUADA Y COSTA AZUL"
  },
  {
    "code" : "LA ALDEA",
    "display" : "LA ALDEA"
  },
  {
    "code" : "LA ALEGRIA",
    "display" : "LA ALEGRIA"
  },
  {
    "code" : "LA ALIANZA",
    "display" : "LA ALIANZA"
  },
  {
    "code" : "LA ARENA",
    "display" : "LA ARENA"
  },
  {
    "code" : "LA ASUNCION",
    "display" : "LA ASUNCION"
  },
  {
    "code" : "LA BARRA",
    "display" : "LA BARRA"
  },
  {
    "code" : "LA BLANQUEADA",
    "display" : "LA BLANQUEADA"
  },
  {
    "code" : "LA BOLSA",
    "display" : "LA BOLSA"
  },
  {
    "code" : "LA BOLSA 01",
    "display" : "LA BOLSA 01"
  },
  {
    "code" : "LA BOLSA 02",
    "display" : "LA BOLSA 02"
  },
  {
    "code" : "LA BOLSA 03",
    "display" : "LA BOLSA 03"
  },
  {
    "code" : "LA BOYADA",
    "display" : "LA BOYADA"
  },
  {
    "code" : "LA CABALLADA",
    "display" : "LA CABALLADA"
  },
  {
    "code" : "LA CAILLAVA",
    "display" : "LA CAILLAVA"
  },
  {
    "code" : "LA CALAVERA",
    "display" : "LA CALAVERA"
  },
  {
    "code" : "LA CALERA",
    "display" : "LA CALERA"
  },
  {
    "code" : "LA CAPUERA",
    "display" : "LA CAPUERA"
  },
  {
    "code" : "LA CASILLA",
    "display" : "LA CASILLA"
  },
  {
    "code" : "LA CENTINELA",
    "display" : "LA CENTINELA"
  },
  {
    "code" : "LA CERRILLADA",
    "display" : "LA CERRILLADA"
  },
  {
    "code" : "LA CHILCA",
    "display" : "LA CHILCA"
  },
  {
    "code" : "LA CHINCHILLA",
    "display" : "LA CHINCHILLA"
  },
  {
    "code" : "LA CIMBRA",
    "display" : "LA CIMBRA"
  },
  {
    "code" : "LA COMERCIAL",
    "display" : "LA COMERCIAL"
  },
  {
    "code" : "LA CONCORDIA",
    "display" : "LA CONCORDIA"
  },
  {
    "code" : "LA CORDOBESA",
    "display" : "LA CORDOBESA"
  },
  {
    "code" : "LA CORONILLA",
    "display" : "LA CORONILLA"
  },
  {
    "code" : "LA CORONILLA FISHING CLUB",
    "display" : "LA CORONILLA FISHING CLUB"
  },
  {
    "code" : "LA CRUZ",
    "display" : "LA CRUZ"
  },
  {
    "code" : "LA CUCHILLA",
    "display" : "LA CUCHILLA"
  },
  {
    "code" : "LA ESCOBILLA",
    "display" : "LA ESCOBILLA"
  },
  {
    "code" : "LA ESMERALDA",
    "display" : "LA ESMERALDA"
  },
  {
    "code" : "LA ESTANZUELA",
    "display" : "LA ESTANZUELA"
  },
  {
    "code" : "LA FALDA",
    "display" : "LA FALDA"
  },
  {
    "code" : "LA FIGURITA",
    "display" : "LA FIGURITA"
  },
  {
    "code" : "LA FLORESTA",
    "display" : "LA FLORESTA"
  },
  {
    "code" : "LA FLORIDA",
    "display" : "LA FLORIDA"
  },
  {
    "code" : "LA FORTALEZA DE SANTA TERESA",
    "display" : "LA FORTALEZA DE SANTA TERESA"
  },
  {
    "code" : "LA GLORIA",
    "display" : "LA GLORIA"
  },
  {
    "code" : "LA GUARDIA",
    "display" : "LA GUARDIA"
  },
  {
    "code" : "LA HILERA",
    "display" : "LA HILERA"
  },
  {
    "code" : "LA HORQUETA",
    "display" : "LA HORQUETA"
  },
  {
    "code" : "LA JUANITA",
    "display" : "LA JUANITA"
  },
  {
    "code" : "LA LAGUNA",
    "display" : "LA LAGUNA"
  },
  {
    "code" : "LA LATA",
    "display" : "LA LATA"
  },
  {
    "code" : "LA LATA RUTA 3 (KM. 375)",
    "display" : "LA LATA RUTA 3 (KM. 375)"
  },
  {
    "code" : "LA LOMA",
    "display" : "LA LOMA"
  },
  {
    "code" : "LA MACANA",
    "display" : "LA MACANA"
  },
  {
    "code" : "LA MAZAMORRA",
    "display" : "LA MAZAMORRA"
  },
  {
    "code" : "LA MICAELA",
    "display" : "LA MICAELA"
  },
  {
    "code" : "LA MINA",
    "display" : "LA MINA"
  },
  {
    "code" : "LA MONTAÃ‘ESA",
    "display" : "LA MONTAÃ‘ESA"
  },
  {
    "code" : "LA PALMA",
    "display" : "LA PALMA"
  },
  {
    "code" : "LA PALMITA",
    "display" : "LA PALMITA"
  },
  {
    "code" : "LA PALOMA",
    "display" : "LA PALOMA"
  },
  {
    "code" : "LA PALOMA, TOMKINSON",
    "display" : "LA PALOMA, TOMKINSON"
  },
  {
    "code" : "LA PAZ",
    "display" : "LA PAZ"
  },
  {
    "code" : "LA PAZ (RUTA 3 KM. 346)",
    "display" : "LA PAZ (RUTA 3 KM. 346)"
  },
  {
    "code" : "LA PEDRERA",
    "display" : "LA PEDRERA"
  },
  {
    "code" : "LA PLATA",
    "display" : "LA PLATA"
  },
  {
    "code" : "LA RIBIERA",
    "display" : "LA RIBIERA"
  },
  {
    "code" : "LA SIERRA",
    "display" : "LA SIERRA"
  },
  {
    "code" : "LA SONRISA",
    "display" : "LA SONRISA"
  },
  {
    "code" : "LA TABLA",
    "display" : "LA TABLA"
  },
  {
    "code" : "LA TEJA",
    "display" : "LA TEJA"
  },
  {
    "code" : "LA TENTACION",
    "display" : "LA TENTACION"
  },
  {
    "code" : "LA TOTORA",
    "display" : "LA TOTORA"
  },
  {
    "code" : "LA TUNA",
    "display" : "LA TUNA"
  },
  {
    "code" : "LA UNION",
    "display" : "LA UNION"
  },
  {
    "code" : "LA VICTORIA",
    "display" : "LA VICTORIA"
  },
  {
    "code" : "LA VITICOLA",
    "display" : "LA VITICOLA"
  },
  {
    "code" : "LADRILLOS",
    "display" : "LADRILLOS"
  },
  {
    "code" : "LAGO DE LOS CISNES",
    "display" : "LAGO DE LOS CISNES"
  },
  {
    "code" : "LAGO JARDIN DEL BOSQUE",
    "display" : "LAGO JARDIN DEL BOSQUE"
  },
  {
    "code" : "LAGO MERIN",
    "display" : "LAGO MERIN"
  },
  {
    "code" : "LAGOMAR",
    "display" : "LAGOMAR"
  },
  {
    "code" : "LAGOS DEL NORTE",
    "display" : "LAGOS DEL NORTE"
  },
  {
    "code" : "LAGUNA BLANCA",
    "display" : "LAGUNA BLANCA"
  },
  {
    "code" : "LAGUNA DE LOS PATOS",
    "display" : "LAGUNA DE LOS PATOS"
  },
  {
    "code" : "LAGUNA DEL JUNCO",
    "display" : "LAGUNA DEL JUNCO"
  },
  {
    "code" : "LAGUNA DEL SAUCE",
    "display" : "LAGUNA DEL SAUCE"
  },
  {
    "code" : "LAGUNON",
    "display" : "LAGUNON"
  },
  {
    "code" : "LAMBARE",
    "display" : "LAMBARE"
  },
  {
    "code" : "LARES",
    "display" : "LARES"
  },
  {
    "code" : "LARRAÃ‘AGA",
    "display" : "LARRAÃ‘AGA"
  },
  {
    "code" : "LARRAYOS",
    "display" : "LARRAYOS"
  },
  {
    "code" : "LARROSA",
    "display" : "LARROSA"
  },
  {
    "code" : "LAS ACACIAS",
    "display" : "LAS ACACIAS"
  },
  {
    "code" : "LAS ACHIRAS",
    "display" : "LAS ACHIRAS"
  },
  {
    "code" : "LAS ARENAS",
    "display" : "LAS ARENAS"
  },
  {
    "code" : "LAS BRUJAS",
    "display" : "LAS BRUJAS"
  },
  {
    "code" : "LAS CAÃ‘AS",
    "display" : "LAS CAÃ‘AS"
  },
  {
    "code" : "LAS CANTERAS",
    "display" : "LAS CANTERAS"
  },
  {
    "code" : "LAS CHACRAS",
    "display" : "LAS CHACRAS"
  },
  {
    "code" : "LAS CHIRCAS",
    "display" : "LAS CHIRCAS"
  },
  {
    "code" : "LAS CHISPAS",
    "display" : "LAS CHISPAS"
  },
  {
    "code" : "LAS CUMBRES",
    "display" : "LAS CUMBRES"
  },
  {
    "code" : "LAS FLORES",
    "display" : "LAS FLORES"
  },
  {
    "code" : "LAS FLORES - ESTACION",
    "display" : "LAS FLORES - ESTACION"
  },
  {
    "code" : "LAS FRACCIONES",
    "display" : "LAS FRACCIONES"
  },
  {
    "code" : "LAS HIGUERITAS",
    "display" : "LAS HIGUERITAS"
  },
  {
    "code" : "LAS LIMAS",
    "display" : "LAS LIMAS"
  },
  {
    "code" : "LAS MARGARITAS",
    "display" : "LAS MARGARITAS"
  },
  {
    "code" : "LAS MAULAS",
    "display" : "LAS MAULAS"
  },
  {
    "code" : "LAS PAJAS",
    "display" : "LAS PAJAS"
  },
  {
    "code" : "LAS PALMAS",
    "display" : "LAS PALMAS"
  },
  {
    "code" : "LAS PAVAS",
    "display" : "LAS PAVAS"
  },
  {
    "code" : "LAS PIEDRAS",
    "display" : "LAS PIEDRAS"
  },
  {
    "code" : "LAS PIEDRITAS",
    "display" : "LAS PIEDRITAS"
  },
  {
    "code" : "LAS RANAS",
    "display" : "LAS RANAS"
  },
  {
    "code" : "LAS TOSCAS",
    "display" : "LAS TOSCAS"
  },
  {
    "code" : "LAS TOSCAS DE CARAGUATA",
    "display" : "LAS TOSCAS DE CARAGUATA"
  },
  {
    "code" : "LAS TUNAS",
    "display" : "LAS TUNAS"
  },
  {
    "code" : "LAS VEGAS",
    "display" : "LAS VEGAS"
  },
  {
    "code" : "LAS VIOLETAS",
    "display" : "LAS VIOLETAS"
  },
  {
    "code" : "LASCANO",
    "display" : "LASCANO"
  },
  {
    "code" : "LATA DEL PERDIDO",
    "display" : "LATA DEL PERDIDO"
  },
  {
    "code" : "LAURA",
    "display" : "LAURA"
  },
  {
    "code" : "LAUREL",
    "display" : "LAUREL"
  },
  {
    "code" : "LAURELES",
    "display" : "LAURELES"
  },
  {
    "code" : "LECHIGUANA DE CORRALES",
    "display" : "LECHIGUANA DE CORRALES"
  },
  {
    "code" : "LENGUAZO",
    "display" : "LENGUAZO"
  },
  {
    "code" : "LEZICA, MELILLA",
    "display" : "LEZICA, MELILLA"
  },
  {
    "code" : "LIBERTAD",
    "display" : "LIBERTAD"
  },
  {
    "code" : "LIMITE CONTESTADO",
    "display" : "LIMITE CONTESTADO"
  },
  {
    "code" : "LLUVERAS",
    "display" : "LLUVERAS"
  },
  {
    "code" : "LOMAS",
    "display" : "LOMAS"
  },
  {
    "code" : "LOMAS DE CARMELO",
    "display" : "LOMAS DE CARMELO"
  },
  {
    "code" : "LOMAS DE CARRASCO",
    "display" : "LOMAS DE CARRASCO"
  },
  {
    "code" : "LOMAS DE SOLYMAR",
    "display" : "LOMAS DE SOLYMAR"
  },
  {
    "code" : "LOMAS DE TOLEDO",
    "display" : "LOMAS DE TOLEDO"
  },
  {
    "code" : "LORENZO GEYRES",
    "display" : "LORENZO GEYRES"
  },
  {
    "code" : "LOS AGREGADOS",
    "display" : "LOS AGREGADOS"
  },
  {
    "code" : "LOS AJOS",
    "display" : "LOS AJOS"
  },
  {
    "code" : "LOS AROMOS",
    "display" : "LOS AROMOS"
  },
  {
    "code" : "LOS ARRAYANES",
    "display" : "LOS ARRAYANES"
  },
  {
    "code" : "LOS CEIBOS",
    "display" : "LOS CEIBOS"
  },
  {
    "code" : "LOS CERRILLOS",
    "display" : "LOS CERRILLOS"
  },
  {
    "code" : "LOS CERROS",
    "display" : "LOS CERROS"
  },
  {
    "code" : "LOS COITINHOS",
    "display" : "LOS COITINHOS"
  },
  {
    "code" : "LOS CORCHOS",
    "display" : "LOS CORCHOS"
  },
  {
    "code" : "LOS CUADRADOS",
    "display" : "LOS CUADRADOS"
  },
  {
    "code" : "LOS FEOS",
    "display" : "LOS FEOS"
  },
  {
    "code" : "LOS FURTADOS",
    "display" : "LOS FURTADOS"
  },
  {
    "code" : "LOS GARCIA",
    "display" : "LOS GARCIA"
  },
  {
    "code" : "LOS GOMEZ",
    "display" : "LOS GOMEZ"
  },
  {
    "code" : "LOS HORNOS",
    "display" : "LOS HORNOS"
  },
  {
    "code" : "LOS INDIOS",
    "display" : "LOS INDIOS"
  },
  {
    "code" : "LOS LAURELES",
    "display" : "LOS LAURELES"
  },
  {
    "code" : "LOS MALAVARES",
    "display" : "LOS MALAVARES"
  },
  {
    "code" : "LOS MELLIZOS",
    "display" : "LOS MELLIZOS"
  },
  {
    "code" : "LOS ORIENTALES",
    "display" : "LOS ORIENTALES"
  },
  {
    "code" : "LOS ORTICES",
    "display" : "LOS ORTICES"
  },
  {
    "code" : "LOS PINOS",
    "display" : "LOS PINOS"
  },
  {
    "code" : "LOS POTREROS",
    "display" : "LOS POTREROS"
  },
  {
    "code" : "LOS PUENTES",
    "display" : "LOS PUENTES"
  },
  {
    "code" : "LOS RANCHOS",
    "display" : "LOS RANCHOS"
  },
  {
    "code" : "LOS RODRIGUEZ",
    "display" : "LOS RODRIGUEZ"
  },
  {
    "code" : "LOS ROSANOS",
    "display" : "LOS ROSANOS"
  },
  {
    "code" : "LOS ROSAS",
    "display" : "LOS ROSAS"
  },
  {
    "code" : "LOS SEMPER",
    "display" : "LOS SEMPER"
  },
  {
    "code" : "LOS TALAS",
    "display" : "LOS TALAS"
  },
  {
    "code" : "LOS TAPES",
    "display" : "LOS TAPES"
  },
  {
    "code" : "LOS TITANES",
    "display" : "LOS TITANES"
  },
  {
    "code" : "LOS VAZQUEZ",
    "display" : "LOS VAZQUEZ"
  },
  {
    "code" : "LUNAREJO",
    "display" : "LUNAREJO"
  },
  {
    "code" : "MACANA",
    "display" : "MACANA"
  },
  {
    "code" : "MACIEL",
    "display" : "MACIEL"
  },
  {
    "code" : "MAESTRE CAMPO",
    "display" : "MAESTRE CAMPO"
  },
  {
    "code" : "MAHOMA",
    "display" : "MAHOMA"
  },
  {
    "code" : "MAL ABRIGO",
    "display" : "MAL ABRIGO"
  },
  {
    "code" : "MALBAJAR ESTE",
    "display" : "MALBAJAR ESTE"
  },
  {
    "code" : "MALBAJAR OESTE",
    "display" : "MALBAJAR OESTE"
  },
  {
    "code" : "MALDONADO",
    "display" : "MALDONADO"
  },
  {
    "code" : "MALVIN",
    "display" : "MALVIN"
  },
  {
    "code" : "MALVIN NORTE",
    "display" : "MALVIN NORTE"
  },
  {
    "code" : "MANANTIALES",
    "display" : "MANANTIALES"
  },
  {
    "code" : "MANDUBI",
    "display" : "MANDUBI"
  },
  {
    "code" : "MANGA",
    "display" : "MANGA"
  },
  {
    "code" : "MANGA, TOLEDO CHICO",
    "display" : "MANGA, TOLEDO CHICO"
  },
  {
    "code" : "MANGRULLO",
    "display" : "MANGRULLO"
  },
  {
    "code" : "MANGUERA AZUL",
    "display" : "MANGUERA AZUL"
  },
  {
    "code" : "MANSAVILLAGRA",
    "display" : "MANSAVILLAGRA"
  },
  {
    "code" : "MANUEL DIAZ",
    "display" : "MANUEL DIAZ"
  },
  {
    "code" : "MAR DEL PLATA",
    "display" : "MAR DEL PLATA"
  },
  {
    "code" : "MARCO DE LOS REYES",
    "display" : "MARCO DE LOS REYES"
  },
  {
    "code" : "MARGAT",
    "display" : "MARGAT"
  },
  {
    "code" : "MARIA ALBINA",
    "display" : "MARIA ALBINA"
  },
  {
    "code" : "MARIA CEJAS",
    "display" : "MARIA CEJAS"
  },
  {
    "code" : "MARIA ISABEL",
    "display" : "MARIA ISABEL"
  },
  {
    "code" : "MARINCHO",
    "display" : "MARINCHO"
  },
  {
    "code" : "MARINDIA",
    "display" : "MARINDIA"
  },
  {
    "code" : "MARISCALA",
    "display" : "MARISCALA"
  },
  {
    "code" : "MARISCALA DEL CARMEN",
    "display" : "MARISCALA DEL CARMEN"
  },
  {
    "code" : "MARMARAJA",
    "display" : "MARMARAJA"
  },
  {
    "code" : "MAROÃ‘AS, PARQUE GUARANI",
    "display" : "MAROÃ‘AS, PARQUE GUARANI"
  },
  {
    "code" : "MARTIN CHICO",
    "display" : "MARTIN CHICO"
  },
  {
    "code" : "MARTIN CHICO DE CONCHILLAS",
    "display" : "MARTIN CHICO DE CONCHILLAS"
  },
  {
    "code" : "MARTINOTE",
    "display" : "MARTINOTE"
  },
  {
    "code" : "MASOLLER",
    "display" : "MASOLLER"
  },
  {
    "code" : "MATA SIETE",
    "display" : "MATA SIETE"
  },
  {
    "code" : "MATAOJITO",
    "display" : "MATAOJITO"
  },
  {
    "code" : "MATAOJO",
    "display" : "MATAOJO"
  },
  {
    "code" : "MATAOJO GRANDE",
    "display" : "MATAOJO GRANDE"
  },
  {
    "code" : "MATE DULCE",
    "display" : "MATE DULCE"
  },
  {
    "code" : "MAZANGANO",
    "display" : "MAZANGANO"
  },
  {
    "code" : "MEDANOS DE SOLYMAR",
    "display" : "MEDANOS DE SOLYMAR"
  },
  {
    "code" : "MEDIA AGUA",
    "display" : "MEDIA AGUA"
  },
  {
    "code" : "MELGAREJO",
    "display" : "MELGAREJO"
  },
  {
    "code" : "MELILLA",
    "display" : "MELILLA"
  },
  {
    "code" : "MELO",
    "display" : "MELO"
  },
  {
    "code" : "MENAFRA",
    "display" : "MENAFRA"
  },
  {
    "code" : "MENDIZABAL",
    "display" : "MENDIZABAL"
  },
  {
    "code" : "MENDOZA CHICO",
    "display" : "MENDOZA CHICO"
  },
  {
    "code" : "MENDOZA GRANDE",
    "display" : "MENDOZA GRANDE"
  },
  {
    "code" : "MENESES",
    "display" : "MENESES"
  },
  {
    "code" : "MERCADO MODELO, BOLIVAR",
    "display" : "MERCADO MODELO, BOLIVAR"
  },
  {
    "code" : "MERCEDES",
    "display" : "MERCEDES"
  },
  {
    "code" : "MERINOS",
    "display" : "MERINOS"
  },
  {
    "code" : "MIGUELETE DE CONCHILLAS",
    "display" : "MIGUELETE DE CONCHILLAS"
  },
  {
    "code" : "MIGUES",
    "display" : "MIGUES"
  },
  {
    "code" : "MINAS",
    "display" : "MINAS"
  },
  {
    "code" : "MINAS DE CORRALES",
    "display" : "MINAS DE CORRALES"
  },
  {
    "code" : "MINAS DE CUÃ‘APIRU (USINAS)",
    "display" : "MINAS DE CUÃ‘APIRU (USINAS)"
  },
  {
    "code" : "MINAS DE NARANCIO",
    "display" : "MINAS DE NARANCIO"
  },
  {
    "code" : "MINAS DE ZAPUCAY",
    "display" : "MINAS DE ZAPUCAY"
  },
  {
    "code" : "MINUANO",
    "display" : "MINUANO"
  },
  {
    "code" : "MINUANO DE ACEGUA",
    "display" : "MINUANO DE ACEGUA"
  },
  {
    "code" : "MINUANO Y SAUCE",
    "display" : "MINUANO Y SAUCE"
  },
  {
    "code" : "MIRADOR DE LA TAHONA",
    "display" : "MIRADOR DE LA TAHONA"
  },
  {
    "code" : "MIRAMAR",
    "display" : "MIRAMAR"
  },
  {
    "code" : "MISTERIO",
    "display" : "MISTERIO"
  },
  {
    "code" : "MOIRONES",
    "display" : "MOIRONES"
  },
  {
    "code" : "MOLLES CHICO",
    "display" : "MOLLES CHICO"
  },
  {
    "code" : "MOLLES DE AIGUA",
    "display" : "MOLLES DE AIGUA"
  },
  {
    "code" : "MOLLES DE CAÃ‘ADA GRANDE",
    "display" : "MOLLES DE CAÃ‘ADA GRANDE"
  },
  {
    "code" : "MOLLES DE GARZON",
    "display" : "MOLLES DE GARZON"
  },
  {
    "code" : "MOLLES DE MIGUELETE",
    "display" : "MOLLES DE MIGUELETE"
  },
  {
    "code" : "MOLLES DE OLIMAR",
    "display" : "MOLLES DE OLIMAR"
  },
  {
    "code" : "MOLLES DE PORRUA",
    "display" : "MOLLES DE PORRUA"
  },
  {
    "code" : "MOLLES DE QUINTEROS",
    "display" : "MOLLES DE QUINTEROS"
  },
  {
    "code" : "MOLLES DEL PESCADO",
    "display" : "MOLLES DEL PESCADO"
  },
  {
    "code" : "MOLLES DEL SAUCE",
    "display" : "MOLLES DEL SAUCE"
  },
  {
    "code" : "MOLLES DEL TIMOTE",
    "display" : "MOLLES DEL TIMOTE"
  },
  {
    "code" : "MOLLES GRANDE",
    "display" : "MOLLES GRANDE"
  },
  {
    "code" : "MONACO DE CARRASCO",
    "display" : "MONACO DE CARRASCO"
  },
  {
    "code" : "MONES QUINTELA",
    "display" : "MONES QUINTELA"
  },
  {
    "code" : "MONTE GRANDE",
    "display" : "MONTE GRANDE"
  },
  {
    "code" : "MONTECITO",
    "display" : "MONTECITO"
  },
  {
    "code" : "MONTECORAL",
    "display" : "MONTECORAL"
  },
  {
    "code" : "MONTES",
    "display" : "MONTES"
  },
  {
    "code" : "MONTES DE SOLYMAR",
    "display" : "MONTES DE SOLYMAR"
  },
  {
    "code" : "MONTEVIDEO CHICO",
    "display" : "MONTEVIDEO CHICO"
  },
  {
    "code" : "MONZON",
    "display" : "MONZON"
  },
  {
    "code" : "MORATO (TRES ARBOLES)",
    "display" : "MORATO (TRES ARBOLES)"
  },
  {
    "code" : "MOURIÃ‘O",
    "display" : "MOURIÃ‘O"
  },
  {
    "code" : "MUNDO AZUL",
    "display" : "MUNDO AZUL"
  },
  {
    "code" : "MUNDO AZUL AGUIRRE",
    "display" : "MUNDO AZUL AGUIRRE"
  },
  {
    "code" : "MUNICIPIO DE DURAZNO",
    "display" : "MUNICIPIO DE DURAZNO"
  },
  {
    "code" : "MURIALDO",
    "display" : "MURIALDO"
  },
  {
    "code" : "NANDO",
    "display" : "NANDO"
  },
  {
    "code" : "NATALY",
    "display" : "NATALY"
  },
  {
    "code" : "NEPTUNIA",
    "display" : "NEPTUNIA"
  },
  {
    "code" : "NICO PEREZ",
    "display" : "NICO PEREZ"
  },
  {
    "code" : "NOQUES DE OLIMAR CHICO",
    "display" : "NOQUES DE OLIMAR CHICO"
  },
  {
    "code" : "NUEVA CARRARA",
    "display" : "NUEVA CARRARA"
  },
  {
    "code" : "NUEVA HELVECIA",
    "display" : "NUEVA HELVECIA"
  },
  {
    "code" : "NUEVA HESPERIDES",
    "display" : "NUEVA HESPERIDES"
  },
  {
    "code" : "NUEVA PALMIRA",
    "display" : "NUEVA PALMIRA"
  },
  {
    "code" : "NUEVO BERLIN",
    "display" : "NUEVO BERLIN"
  },
  {
    "code" : "NUEVO PARIS",
    "display" : "NUEVO PARIS"
  },
  {
    "code" : "NUEVO PAYSANDU",
    "display" : "NUEVO PAYSANDU"
  },
  {
    "code" : "NUTRIAS",
    "display" : "NUTRIAS"
  },
  {
    "code" : "OCEAN PARK",
    "display" : "OCEAN PARK"
  },
  {
    "code" : "OCEANIA DEL POLONIO",
    "display" : "OCEANIA DEL POLONIO"
  },
  {
    "code" : "OLIMAR GRANDE",
    "display" : "OLIMAR GRANDE"
  },
  {
    "code" : "OLIVERA",
    "display" : "OLIVERA"
  },
  {
    "code" : "OLMOS",
    "display" : "OLMOS"
  },
  {
    "code" : "OMBUCITOS",
    "display" : "OMBUCITOS"
  },
  {
    "code" : "OMBUES DE BENTANCOR",
    "display" : "OMBUES DE BENTANCOR"
  },
  {
    "code" : "OMBUES DE LAVALLE",
    "display" : "OMBUES DE LAVALLE"
  },
  {
    "code" : "OMBUES DE ORIBE",
    "display" : "OMBUES DE ORIBE"
  },
  {
    "code" : "ONCE CERROS",
    "display" : "ONCE CERROS"
  },
  {
    "code" : "ORATORIO",
    "display" : "ORATORIO"
  },
  {
    "code" : "ORGOROSO",
    "display" : "ORGOROSO"
  },
  {
    "code" : "ORILLAS DEL PLATA",
    "display" : "ORILLAS DEL PLATA"
  },
  {
    "code" : "ORTIZ CASTRO",
    "display" : "ORTIZ CASTRO"
  },
  {
    "code" : "OSIMANI Y LLERENA",
    "display" : "OSIMANI Y LLERENA"
  },
  {
    "code" : "PACHINA",
    "display" : "PACHINA"
  },
  {
    "code" : "PAGO DE LA PAJA",
    "display" : "PAGO DE LA PAJA"
  },
  {
    "code" : "PAGUERO",
    "display" : "PAGUERO"
  },
  {
    "code" : "PAJAS BLANCAS",
    "display" : "PAJAS BLANCAS"
  },
  {
    "code" : "PALERMO",
    "display" : "PALERMO"
  },
  {
    "code" : "PALMA SOLA",
    "display" : "PALMA SOLA"
  },
  {
    "code" : "PALMAR",
    "display" : "PALMAR"
  },
  {
    "code" : "PALMAR DE CASTILLOS",
    "display" : "PALMAR DE CASTILLOS"
  },
  {
    "code" : "PALMAR DE PORRUA",
    "display" : "PALMAR DE PORRUA"
  },
  {
    "code" : "PALMAR DEL QUEBRACHO",
    "display" : "PALMAR DEL QUEBRACHO"
  },
  {
    "code" : "PALMAR GRANDE",
    "display" : "PALMAR GRANDE"
  },
  {
    "code" : "PALMARES DE LA CORONILLA",
    "display" : "PALMARES DE LA CORONILLA"
  },
  {
    "code" : "PALMITAS",
    "display" : "PALMITAS"
  },
  {
    "code" : "PALO A PIQUE",
    "display" : "PALO A PIQUE"
  },
  {
    "code" : "PALO SOLO",
    "display" : "PALO SOLO"
  },
  {
    "code" : "PALOMAS",
    "display" : "PALOMAS"
  },
  {
    "code" : "PAMPA",
    "display" : "PAMPA"
  },
  {
    "code" : "PAN DE AZUCAR",
    "display" : "PAN DE AZUCAR"
  },
  {
    "code" : "PANDO",
    "display" : "PANDO"
  },
  {
    "code" : "PANTA",
    "display" : "PANTA"
  },
  {
    "code" : "PANTANOSO",
    "display" : "PANTANOSO"
  },
  {
    "code" : "PANTANOSO DE CASTRO",
    "display" : "PANTANOSO DE CASTRO"
  },
  {
    "code" : "PANTANOSO DEL SAUCE",
    "display" : "PANTANOSO DEL SAUCE"
  },
  {
    "code" : "PANTEON",
    "display" : "PANTEON"
  },
  {
    "code" : "PARADA CABRERA",
    "display" : "PARADA CABRERA"
  },
  {
    "code" : "PARADA DAYMAN",
    "display" : "PARADA DAYMAN"
  },
  {
    "code" : "PARADA HERRERIA",
    "display" : "PARADA HERRERIA"
  },
  {
    "code" : "PARADA MEDINA",
    "display" : "PARADA MEDINA"
  },
  {
    "code" : "PARADA PANDULE",
    "display" : "PARADA PANDULE"
  },
  {
    "code" : "PARADA RIVAS",
    "display" : "PARADA RIVAS"
  },
  {
    "code" : "PARADA SUAREZ",
    "display" : "PARADA SUAREZ"
  },
  {
    "code" : "PARADA SUR",
    "display" : "PARADA SUR"
  },
  {
    "code" : "PARADOR TAJES",
    "display" : "PARADOR TAJES"
  },
  {
    "code" : "PARAJE MINUANO",
    "display" : "PARAJE MINUANO"
  },
  {
    "code" : "PARALLE",
    "display" : "PARALLE"
  },
  {
    "code" : "PAREDON",
    "display" : "PAREDON"
  },
  {
    "code" : "PARISH",
    "display" : "PARISH"
  },
  {
    "code" : "PARQUE CARRASCO",
    "display" : "PARQUE CARRASCO"
  },
  {
    "code" : "PARQUE DE SOLYMAR",
    "display" : "PARQUE DE SOLYMAR"
  },
  {
    "code" : "PARQUE DEL PLATA",
    "display" : "PARQUE DEL PLATA"
  },
  {
    "code" : "PARQUE JOSE LUIS",
    "display" : "PARQUE JOSE LUIS"
  },
  {
    "code" : "PARQUE MEDINA",
    "display" : "PARQUE MEDINA"
  },
  {
    "code" : "PARQUE MIRAMAR",
    "display" : "PARQUE MIRAMAR"
  },
  {
    "code" : "PARQUE POSTEL",
    "display" : "PARQUE POSTEL"
  },
  {
    "code" : "PARQUE POSTEL CNEL. ADRIAN MEDINA",
    "display" : "PARQUE POSTEL CNEL. ADRIAN MEDINA"
  },
  {
    "code" : "PARQUE RODO",
    "display" : "PARQUE RODO"
  },
  {
    "code" : "PARTIDO NORTE",
    "display" : "PARTIDO NORTE"
  },
  {
    "code" : "PARTIDO OESTE",
    "display" : "PARTIDO OESTE"
  },
  {
    "code" : "PASO DE LUGO",
    "display" : "PASO DE LUGO"
  },
  {
    "code" : "PASO VALEGA",
    "display" : "PASO VALEGA"
  },
  {
    "code" : "PASO AMARILLO",
    "display" : "PASO AMARILLO"
  },
  {
    "code" : "PASO ANCHO",
    "display" : "PASO ANCHO"
  },
  {
    "code" : "PASO ANTOLIN",
    "display" : "PASO ANTOLIN"
  },
  {
    "code" : "PASO ARBELO",
    "display" : "PASO ARBELO"
  },
  {
    "code" : "PASO ATAQUES",
    "display" : "PASO ATAQUES"
  },
  {
    "code" : "PASO BELASTIQUI",
    "display" : "PASO BELASTIQUI"
  },
  {
    "code" : "PASO BIRRIEL",
    "display" : "PASO BIRRIEL"
  },
  {
    "code" : "PASO BONILLA",
    "display" : "PASO BONILLA"
  },
  {
    "code" : "PASO CALLEROS",
    "display" : "PASO CALLEROS"
  },
  {
    "code" : "PASO CAMPAMENTO",
    "display" : "PASO CAMPAMENTO"
  },
  {
    "code" : "PASO CARRASCO",
    "display" : "PASO CARRASCO"
  },
  {
    "code" : "PASO CASILDO",
    "display" : "PASO CASILDO"
  },
  {
    "code" : "PASO CEMENTERIO",
    "display" : "PASO CEMENTERIO"
  },
  {
    "code" : "PASO DE AGUIRRE",
    "display" : "PASO DE AGUIRRE"
  },
  {
    "code" : "PASO DE ARRIERA",
    "display" : "PASO DE ARRIERA"
  },
  {
    "code" : "PASO DE ATAQUES",
    "display" : "PASO DE ATAQUES"
  },
  {
    "code" : "PASO DE AVERIAS",
    "display" : "PASO DE AVERIAS"
  },
  {
    "code" : "PASO DE BALBUENA",
    "display" : "PASO DE BALBUENA"
  },
  {
    "code" : "PASO DE CAMES",
    "display" : "PASO DE CAMES"
  },
  {
    "code" : "PASO DE CASTRO",
    "display" : "PASO DE CASTRO"
  },
  {
    "code" : "PASO DE CEFERINO",
    "display" : "PASO DE CEFERINO"
  },
  {
    "code" : "PASO DE CUELLO",
    "display" : "PASO DE CUELLO"
  },
  {
    "code" : "PASO DE FRONTERA",
    "display" : "PASO DE FRONTERA"
  },
  {
    "code" : "PASO DE GAIRE",
    "display" : "PASO DE GAIRE"
  },
  {
    "code" : "PASO DE LA ARENA",
    "display" : "PASO DE LA ARENA"
  },
  {
    "code" : "PASO DE LA ATAHONA",
    "display" : "PASO DE LA ATAHONA"
  },
  {
    "code" : "PASO DE LA CADENA",
    "display" : "PASO DE LA CADENA"
  },
  {
    "code" : "PASO DE LA CALERA",
    "display" : "PASO DE LA CALERA"
  },
  {
    "code" : "PASO DE LA CANTERA",
    "display" : "PASO DE LA CANTERA"
  },
  {
    "code" : "PASO DE LA CRUZ",
    "display" : "PASO DE LA CRUZ"
  },
  {
    "code" : "PASO DE LA LAGUNA",
    "display" : "PASO DE LA LAGUNA"
  },
  {
    "code" : "PASO DE LA PALOMA",
    "display" : "PASO DE LA PALOMA"
  },
  {
    "code" : "PASO DE LA QUINTA",
    "display" : "PASO DE LA QUINTA"
  },
  {
    "code" : "PASO DE LA SALAMANCA",
    "display" : "PASO DE LA SALAMANCA"
  },
  {
    "code" : "PASO DE LAS CARRETAS",
    "display" : "PASO DE LAS CARRETAS"
  },
  {
    "code" : "PASO DE LAS DURANAS",
    "display" : "PASO DE LAS DURANAS"
  },
  {
    "code" : "PASO DE LAS FLORES",
    "display" : "PASO DE LAS FLORES"
  },
  {
    "code" : "PASO DE LAS PIEDRAS",
    "display" : "PASO DE LAS PIEDRAS"
  },
  {
    "code" : "PASO DE LAS PIEDRAS DE ARERUNGUA",
    "display" : "PASO DE LAS PIEDRAS DE ARERUNGUA"
  },
  {
    "code" : "PASO DE LAS TOSCAS",
    "display" : "PASO DE LAS TOSCAS"
  },
  {
    "code" : "PASO DE LAS TROPAS",
    "display" : "PASO DE LAS TROPAS"
  },
  {
    "code" : "PASO DE LAS YEGUAS",
    "display" : "PASO DE LAS YEGUAS"
  },
  {
    "code" : "PASO DE LEON",
    "display" : "PASO DE LEON"
  },
  {
    "code" : "PASO DE LEOPOLDO",
    "display" : "PASO DE LEOPOLDO"
  },
  {
    "code" : "PASO DE LOPEZ",
    "display" : "PASO DE LOPEZ"
  },
  {
    "code" : "PASO DE LOS ALAMOS",
    "display" : "PASO DE LOS ALAMOS"
  },
  {
    "code" : "PASO DE LOS CARROS",
    "display" : "PASO DE LOS CARROS"
  },
  {
    "code" : "PASO DE LOS COBRES",
    "display" : "PASO DE LOS COBRES"
  },
  {
    "code" : "PASO DE LOS DIFUNTOS",
    "display" : "PASO DE LOS DIFUNTOS"
  },
  {
    "code" : "PASO DE LOS FRANCOS",
    "display" : "PASO DE LOS FRANCOS"
  },
  {
    "code" : "PASO DE LOS NOVILLOS",
    "display" : "PASO DE LOS NOVILLOS"
  },
  {
    "code" : "PASO DE LOS TALAS",
    "display" : "PASO DE LOS TALAS"
  },
  {
    "code" : "PASO DE LOS TOROS",
    "display" : "PASO DE LOS TOROS"
  },
  {
    "code" : "PASO DE LOS TRONCOS",
    "display" : "PASO DE LOS TRONCOS"
  },
  {
    "code" : "PASO DE MAS",
    "display" : "PASO DE MAS"
  },
  {
    "code" : "PASO DE MESA",
    "display" : "PASO DE MESA"
  },
  {
    "code" : "PASO DE PACHE",
    "display" : "PASO DE PACHE"
  },
  {
    "code" : "PASO DE PEREZ",
    "display" : "PASO DE PEREZ"
  },
  {
    "code" : "PASO DE PIRIZ",
    "display" : "PASO DE PIRIZ"
  },
  {
    "code" : "PASO DE RAMOS",
    "display" : "PASO DE RAMOS"
  },
  {
    "code" : "PASO DE SOCA",
    "display" : "PASO DE SOCA"
  },
  {
    "code" : "PASO DEL BAÃ‘ADO",
    "display" : "PASO DEL BAÃ‘ADO"
  },
  {
    "code" : "PASO DEL BOTE",
    "display" : "PASO DEL BOTE"
  },
  {
    "code" : "PASO DEL CARRETON",
    "display" : "PASO DEL CARRETON"
  },
  {
    "code" : "PASO DEL CERRO",
    "display" : "PASO DEL CERRO"
  },
  {
    "code" : "PASO DEL COLORADO",
    "display" : "PASO DEL COLORADO"
  },
  {
    "code" : "PASO DEL GUAYCURU",
    "display" : "PASO DEL GUAYCURU"
  },
  {
    "code" : "PASO DEL LAGUNON",
    "display" : "PASO DEL LAGUNON"
  },
  {
    "code" : "PASO DEL MEDIO",
    "display" : "PASO DEL MEDIO"
  },
  {
    "code" : "PASO DEL MEDIO LAS PALMAS",
    "display" : "PASO DEL MEDIO LAS PALMAS"
  },
  {
    "code" : "PASO DEL OMBU",
    "display" : "PASO DEL OMBU"
  },
  {
    "code" : "PASO DEL PARQUE DEL DAYMAN",
    "display" : "PASO DEL PARQUE DEL DAYMAN"
  },
  {
    "code" : "PASO DEL POTRERO",
    "display" : "PASO DEL POTRERO"
  },
  {
    "code" : "PASO DEL PUERTO",
    "display" : "PASO DEL PUERTO"
  },
  {
    "code" : "PASO DEL REY",
    "display" : "PASO DEL REY"
  },
  {
    "code" : "PASO DEL SAUCE",
    "display" : "PASO DEL SAUCE"
  },
  {
    "code" : "PASO DEL SORDO",
    "display" : "PASO DEL SORDO"
  },
  {
    "code" : "PASO DEL TAPADO",
    "display" : "PASO DEL TAPADO"
  },
  {
    "code" : "PASO DOÃ‘A ROSA",
    "display" : "PASO DOÃ‘A ROSA"
  },
  {
    "code" : "PASO ESPINOSA",
    "display" : "PASO ESPINOSA"
  },
  {
    "code" : "PASO FARIAS",
    "display" : "PASO FARIAS"
  },
  {
    "code" : "PASO FIALHO",
    "display" : "PASO FIALHO"
  },
  {
    "code" : "PASO HONDO",
    "display" : "PASO HONDO"
  },
  {
    "code" : "PASO HOSPITAL",
    "display" : "PASO HOSPITAL"
  },
  {
    "code" : "PASO HOSPITAL MANANTIALES",
    "display" : "PASO HOSPITAL MANANTIALES"
  },
  {
    "code" : "PASO LAPUENTE",
    "display" : "PASO LAPUENTE"
  },
  {
    "code" : "PASO LIVINDO",
    "display" : "PASO LIVINDO"
  },
  {
    "code" : "PASO MELO",
    "display" : "PASO MELO"
  },
  {
    "code" : "PASO MORLAN",
    "display" : "PASO MORLAN"
  },
  {
    "code" : "PASO NUEVO DEL ARAPEY",
    "display" : "PASO NUEVO DEL ARAPEY"
  },
  {
    "code" : "PASO PALOMEQUE",
    "display" : "PASO PALOMEQUE"
  },
  {
    "code" : "PASO PEREIRA",
    "display" : "PASO PEREIRA"
  },
  {
    "code" : "PASO QUICHO",
    "display" : "PASO QUICHO"
  },
  {
    "code" : "PASO RAMIREZ",
    "display" : "PASO RAMIREZ"
  },
  {
    "code" : "PASO REAL DE CARPINTERIA",
    "display" : "PASO REAL DE CARPINTERIA"
  },
  {
    "code" : "PASO REAL DE MANSAVILLAGRA",
    "display" : "PASO REAL DE MANSAVILLAGRA"
  },
  {
    "code" : "PASO RIVERO DE VEJIGAS",
    "display" : "PASO RIVERO DE VEJIGAS"
  },
  {
    "code" : "PASO SERPA",
    "display" : "PASO SERPA"
  },
  {
    "code" : "PASO TEJERA",
    "display" : "PASO TEJERA"
  },
  {
    "code" : "PASO VELA",
    "display" : "PASO VELA"
  },
  {
    "code" : "PASO VICTOR",
    "display" : "PASO VICTOR"
  },
  {
    "code" : "PASTOREO",
    "display" : "PASTOREO"
  },
  {
    "code" : "PATITAS",
    "display" : "PATITAS"
  },
  {
    "code" : "PAURU",
    "display" : "PAURU"
  },
  {
    "code" : "PAVON",
    "display" : "PAVON"
  },
  {
    "code" : "PAYSANDU",
    "display" : "PAYSANDU"
  },
  {
    "code" : "PEÃ‘AROL",
    "display" : "PEÃ‘AROL"
  },
  {
    "code" : "PEÃ‘AROL, LAVALLEJA",
    "display" : "PEÃ‘AROL, LAVALLEJA"
  },
  {
    "code" : "PEDERNAL",
    "display" : "PEDERNAL"
  },
  {
    "code" : "PEDERNAL CHICO",
    "display" : "PEDERNAL CHICO"
  },
  {
    "code" : "PEDERNAL GRANDE",
    "display" : "PEDERNAL GRANDE"
  },
  {
    "code" : "PEDRERA NORTE",
    "display" : "PEDRERA NORTE"
  },
  {
    "code" : "PEDRO CHICO",
    "display" : "PEDRO CHICO"
  },
  {
    "code" : "PENINO",
    "display" : "PENINO"
  },
  {
    "code" : "PEPE NUÃ‘EZ",
    "display" : "PEPE NUÃ‘EZ"
  },
  {
    "code" : "PERICO MORENO",
    "display" : "PERICO MORENO"
  },
  {
    "code" : "PERICO PEREZ",
    "display" : "PERICO PEREZ"
  },
  {
    "code" : "PERSEVERANO",
    "display" : "PERSEVERANO"
  },
  {
    "code" : "PIÃ‘EIRO",
    "display" : "PIÃ‘EIRO"
  },
  {
    "code" : "PIÃ‘ERA",
    "display" : "PIÃ‘ERA"
  },
  {
    "code" : "PICADA DE BENITEZ",
    "display" : "PICADA DE BENITEZ"
  },
  {
    "code" : "PICADA DE CUELLO",
    "display" : "PICADA DE CUELLO"
  },
  {
    "code" : "PICADA DE MAYA",
    "display" : "PICADA DE MAYA"
  },
  {
    "code" : "PICADA DE SALOME",
    "display" : "PICADA DE SALOME"
  },
  {
    "code" : "PICADA GAMBETTA",
    "display" : "PICADA GAMBETTA"
  },
  {
    "code" : "PICADA TOLOSA",
    "display" : "PICADA TOLOSA"
  },
  {
    "code" : "PIEDRA ALTA",
    "display" : "PIEDRA ALTA"
  },
  {
    "code" : "PIEDRA CAMPANA",
    "display" : "PIEDRA CAMPANA"
  },
  {
    "code" : "PIEDRA CHATA",
    "display" : "PIEDRA CHATA"
  },
  {
    "code" : "PIEDRA DE LOS INDIOS",
    "display" : "PIEDRA DE LOS INDIOS"
  },
  {
    "code" : "PIEDRA DEL TORO",
    "display" : "PIEDRA DEL TORO"
  },
  {
    "code" : "PIEDRA PINTADA",
    "display" : "PIEDRA PINTADA"
  },
  {
    "code" : "PIEDRA SOLA",
    "display" : "PIEDRA SOLA"
  },
  {
    "code" : "PIEDRAS BLANCAS",
    "display" : "PIEDRAS BLANCAS"
  },
  {
    "code" : "PIEDRAS COLORADAS",
    "display" : "PIEDRAS COLORADAS"
  },
  {
    "code" : "PIEDRAS DE AFILAR",
    "display" : "PIEDRAS DE AFILAR"
  },
  {
    "code" : "PIEDRITAS",
    "display" : "PIEDRITAS"
  },
  {
    "code" : "PIEDRITAS DE SUAREZ",
    "display" : "PIEDRITAS DE SUAREZ"
  },
  {
    "code" : "PINAMAR",
    "display" : "PINAMAR"
  },
  {
    "code" : "PINAMAR - PINEPARK",
    "display" : "PINAMAR - PINEPARK"
  },
  {
    "code" : "PINARES - LAS DELICIAS",
    "display" : "PINARES - LAS DELICIAS"
  },
  {
    "code" : "PINARES DE SOLYMAR",
    "display" : "PINARES DE SOLYMAR"
  },
  {
    "code" : "PINE PARK",
    "display" : "PINE PARK"
  },
  {
    "code" : "PINTADITO",
    "display" : "PINTADITO"
  },
  {
    "code" : "PINTADO",
    "display" : "PINTADO"
  },
  {
    "code" : "PINTADO GRANDE",
    "display" : "PINTADO GRANDE"
  },
  {
    "code" : "PIRARAJA",
    "display" : "PIRARAJA"
  },
  {
    "code" : "PIRIAPOLIS",
    "display" : "PIRIAPOLIS"
  },
  {
    "code" : "PLACIDO ROSAS",
    "display" : "PLACIDO ROSAS"
  },
  {
    "code" : "PLANO 291",
    "display" : "PLANO 291"
  },
  {
    "code" : "PLATON",
    "display" : "PLATON"
  },
  {
    "code" : "PLAYA AZUL",
    "display" : "PLAYA AZUL"
  },
  {
    "code" : "PLAYA BRITOPOLIS",
    "display" : "PLAYA BRITOPOLIS"
  },
  {
    "code" : "PLAYA FOMENTO",
    "display" : "PLAYA FOMENTO"
  },
  {
    "code" : "PLAYA GRANDE",
    "display" : "PLAYA GRANDE"
  },
  {
    "code" : "PLAYA HERMOSA",
    "display" : "PLAYA HERMOSA"
  },
  {
    "code" : "PLAYA PARANT",
    "display" : "PLAYA PARANT"
  },
  {
    "code" : "PLAYA PASCUAL",
    "display" : "PLAYA PASCUAL"
  },
  {
    "code" : "PLAYA VERDE",
    "display" : "PLAYA VERDE"
  },
  {
    "code" : "POBLADO ALONZO",
    "display" : "POBLADO ALONZO"
  },
  {
    "code" : "POBLADO URUGUAY",
    "display" : "POBLADO URUGUAY"
  },
  {
    "code" : "POCITOS",
    "display" : "POCITOS"
  },
  {
    "code" : "POLANCO",
    "display" : "POLANCO"
  },
  {
    "code" : "POLANCO DEL YI",
    "display" : "POLANCO DEL YI"
  },
  {
    "code" : "POLANCO NORTE",
    "display" : "POLANCO NORTE"
  },
  {
    "code" : "POLANCO SUR",
    "display" : "POLANCO SUR"
  },
  {
    "code" : "POLANCOS",
    "display" : "POLANCOS"
  },
  {
    "code" : "PONCE MATA SIETE",
    "display" : "PONCE MATA SIETE"
  },
  {
    "code" : "POQUITOS",
    "display" : "POQUITOS"
  },
  {
    "code" : "PORORO",
    "display" : "PORORO"
  },
  {
    "code" : "PORT. DE HIERRO Y CAMPODONICO",
    "display" : "PORT. DE HIERRO Y CAMPODONICO"
  },
  {
    "code" : "PORTEZUELO",
    "display" : "PORTEZUELO"
  },
  {
    "code" : "PORTON HAEDO",
    "display" : "PORTON HAEDO"
  },
  {
    "code" : "PORVENIR",
    "display" : "PORVENIR"
  },
  {
    "code" : "PQUE. BATLLE, V. DOLORES",
    "display" : "PQUE. BATLLE, V. DOLORES"
  },
  {
    "code" : "PRADO, NUEVA SAVONA",
    "display" : "PRADO, NUEVA SAVONA"
  },
  {
    "code" : "PRESIDENTE DOCTOR GETULIO VARGAS",
    "display" : "PRESIDENTE DOCTOR GETULIO VARGAS"
  },
  {
    "code" : "PROGRESO",
    "display" : "PROGRESO"
  },
  {
    "code" : "PTA. RIELES, BELLA ITALIA",
    "display" : "PTA. RIELES, BELLA ITALIA"
  },
  {
    "code" : "PTE. SAN MARTIN",
    "display" : "PTE. SAN MARTIN"
  },
  {
    "code" : "PUEBLO ALONZO",
    "display" : "PUEBLO ALONZO"
  },
  {
    "code" : "PUEBLO CASTELLANOS",
    "display" : "PUEBLO CASTELLANOS"
  },
  {
    "code" : "PUEBLO CAYETANO",
    "display" : "PUEBLO CAYETANO"
  },
  {
    "code" : "PUEBLO CENTENARIO",
    "display" : "PUEBLO CENTENARIO"
  },
  {
    "code" : "PUEBLO CLAVIJO",
    "display" : "PUEBLO CLAVIJO"
  },
  {
    "code" : "PUEBLO DE ALVAREZ",
    "display" : "PUEBLO DE ALVAREZ"
  },
  {
    "code" : "PUEBLO DE ARRIBA",
    "display" : "PUEBLO DE ARRIBA"
  },
  {
    "code" : "PUEBLO DE LOS MOROCHOS",
    "display" : "PUEBLO DE LOS MOROCHOS"
  },
  {
    "code" : "PUEBLO DE LOS SANTOS",
    "display" : "PUEBLO DE LOS SANTOS"
  },
  {
    "code" : "PUEBLO DEL BARRO",
    "display" : "PUEBLO DEL BARRO"
  },
  {
    "code" : "PUEBLO ESPERANZA",
    "display" : "PUEBLO ESPERANZA"
  },
  {
    "code" : "PUEBLO FARIAS",
    "display" : "PUEBLO FARIAS"
  },
  {
    "code" : "PUEBLO FEDERACION",
    "display" : "PUEBLO FEDERACION"
  },
  {
    "code" : "PUEBLO FERNANDEZ",
    "display" : "PUEBLO FERNANDEZ"
  },
  {
    "code" : "PUEBLO GRECCO",
    "display" : "PUEBLO GRECCO"
  },
  {
    "code" : "PUEBLO NUEVO",
    "display" : "PUEBLO NUEVO"
  },
  {
    "code" : "PUEBLO PINTOS",
    "display" : "PUEBLO PINTOS"
  },
  {
    "code" : "PUEBLO QUINTANA",
    "display" : "PUEBLO QUINTANA"
  },
  {
    "code" : "PUEBLO RAMOS",
    "display" : "PUEBLO RAMOS"
  },
  {
    "code" : "PUEBLO SOCORRO",
    "display" : "PUEBLO SOCORRO"
  },
  {
    "code" : "PUEBLO SOLIS",
    "display" : "PUEBLO SOLIS"
  },
  {
    "code" : "PUENTE DE BRUJAS",
    "display" : "PUENTE DE BRUJAS"
  },
  {
    "code" : "PUENTE DE MARMARAJA",
    "display" : "PUENTE DE MARMARAJA"
  },
  {
    "code" : "PUENTE DE MENDOZA",
    "display" : "PUENTE DE MENDOZA"
  },
  {
    "code" : "PUENTE NEGRO",
    "display" : "PUENTE NEGRO"
  },
  {
    "code" : "PUENTE VALIZAS",
    "display" : "PUENTE VALIZAS"
  },
  {
    "code" : "PUERTO CONCORDIA",
    "display" : "PUERTO CONCORDIA"
  },
  {
    "code" : "PUERTO DE LOS BOTES",
    "display" : "PUERTO DE LOS BOTES"
  },
  {
    "code" : "PUERTO INGLES",
    "display" : "PUERTO INGLES"
  },
  {
    "code" : "PUERTO LA PALOMA",
    "display" : "PUERTO LA PALOMA"
  },
  {
    "code" : "PUERTO PLATERO",
    "display" : "PUERTO PLATERO"
  },
  {
    "code" : "PUERTO ROSARIO",
    "display" : "PUERTO ROSARIO"
  },
  {
    "code" : "PUGLIA",
    "display" : "PUGLIA"
  },
  {
    "code" : "PUIMAYEN",
    "display" : "PUIMAYEN"
  },
  {
    "code" : "PUNTA BALLENA",
    "display" : "PUNTA BALLENA"
  },
  {
    "code" : "PUNTA CARRETAS",
    "display" : "PUNTA CARRETAS"
  },
  {
    "code" : "PUNTA CEBOLLATI",
    "display" : "PUNTA CEBOLLATI"
  },
  {
    "code" : "PUNTA COLORADA",
    "display" : "PUNTA COLORADA"
  },
  {
    "code" : "PUNTA DE CARRETERA",
    "display" : "PUNTA DE CARRETERA"
  },
  {
    "code" : "PUNTA DEL DIABLO",
    "display" : "PUNTA DEL DIABLO"
  },
  {
    "code" : "PUNTA DEL ESTE",
    "display" : "PUNTA DEL ESTE"
  },
  {
    "code" : "PUNTA FRANCESA",
    "display" : "PUNTA FRANCESA"
  },
  {
    "code" : "PUNTA FRIA",
    "display" : "PUNTA FRIA"
  },
  {
    "code" : "PUNTA GORDA",
    "display" : "PUNTA GORDA"
  },
  {
    "code" : "PUNTA NEGRA",
    "display" : "PUNTA NEGRA"
  },
  {
    "code" : "PUNTA PALMAR",
    "display" : "PUNTA PALMAR"
  },
  {
    "code" : "PUNTA RUBIA",
    "display" : "PUNTA RUBIA"
  },
  {
    "code" : "PUNTAS DE ABROJAL",
    "display" : "PUNTAS DE ABROJAL"
  },
  {
    "code" : "PUNTAS DE AMARILLO",
    "display" : "PUNTAS DE AMARILLO"
  },
  {
    "code" : "PUNTAS DE ARENALES",
    "display" : "PUNTAS DE ARENALES"
  },
  {
    "code" : "PUNTAS DE ARROYO NEGRO",
    "display" : "PUNTAS DE ARROYO NEGRO"
  },
  {
    "code" : "PUNTAS DE AVERIAS",
    "display" : "PUNTAS DE AVERIAS"
  },
  {
    "code" : "PUNTAS DE BACACUA",
    "display" : "PUNTAS DE BACACUA"
  },
  {
    "code" : "PUNTAS DE BARRIGA NEGRA",
    "display" : "PUNTAS DE BARRIGA NEGRA"
  },
  {
    "code" : "PUNTAS DE BRUJAS",
    "display" : "PUNTAS DE BRUJAS"
  },
  {
    "code" : "PUNTAS DE BURICAYUPI",
    "display" : "PUNTAS DE BURICAYUPI"
  },
  {
    "code" : "PUNTAS DE CAÃ‘ADA CARDOZO",
    "display" : "PUNTAS DE CAÃ‘ADA CARDOZO"
  },
  {
    "code" : "PUNTAS DE CAÃ‘ADA GRANDE",
    "display" : "PUNTAS DE CAÃ‘ADA GRANDE"
  },
  {
    "code" : "PUNTAS DE CAGANCHA",
    "display" : "PUNTAS DE CAGANCHA"
  },
  {
    "code" : "PUNTAS DE CALLEROS",
    "display" : "PUNTAS DE CALLEROS"
  },
  {
    "code" : "PUNTAS DE CANELON CHICO",
    "display" : "PUNTAS DE CANELON CHICO"
  },
  {
    "code" : "PUNTAS DE CANGUE",
    "display" : "PUNTAS DE CANGUE"
  },
  {
    "code" : "PUNTAS DE CARPINTERIA",
    "display" : "PUNTAS DE CARPINTERIA"
  },
  {
    "code" : "PUNTAS DE CHAMAME",
    "display" : "PUNTAS DE CHAMAME"
  },
  {
    "code" : "PUNTAS DE CHAMANGA",
    "display" : "PUNTAS DE CHAMANGA"
  },
  {
    "code" : "PUNTAS DE CHAMIZO",
    "display" : "PUNTAS DE CHAMIZO"
  },
  {
    "code" : "PUNTAS DE CINCO SAUCES",
    "display" : "PUNTAS DE CINCO SAUCES"
  },
  {
    "code" : "PUNTAS DE COCHENGO",
    "display" : "PUNTAS DE COCHENGO"
  },
  {
    "code" : "PUNTAS DE CORRALES",
    "display" : "PUNTAS DE CORRALES"
  },
  {
    "code" : "PUNTAS DE CUÃ‘APIRU",
    "display" : "PUNTAS DE CUÃ‘APIRU"
  },
  {
    "code" : "PUNTAS DE DON CARLOS",
    "display" : "PUNTAS DE DON CARLOS"
  },
  {
    "code" : "PUNTAS DE DURAZNO",
    "display" : "PUNTAS DE DURAZNO"
  },
  {
    "code" : "PUNTAS DE GREGORIO",
    "display" : "PUNTAS DE GREGORIO"
  },
  {
    "code" : "PUNTAS DE GUALEGUAY",
    "display" : "PUNTAS DE GUALEGUAY"
  },
  {
    "code" : "PUNTAS DE HERRERA",
    "display" : "PUNTAS DE HERRERA"
  },
  {
    "code" : "PUNTAS DE ILLESCAS",
    "display" : "PUNTAS DE ILLESCAS"
  },
  {
    "code" : "PUNTAS DE JOSE IGNACIO",
    "display" : "PUNTAS DE JOSE IGNACIO"
  },
  {
    "code" : "PUNTAS DE JUAN GONZALEZ",
    "display" : "PUNTAS DE JUAN GONZALEZ"
  },
  {
    "code" : "PUNTAS DE LA ESCOBILLA",
    "display" : "PUNTAS DE LA ESCOBILLA"
  },
  {
    "code" : "PUNTAS DE LA MINA",
    "display" : "PUNTAS DE LA MINA"
  },
  {
    "code" : "PUNTAS DE LA SIERRA",
    "display" : "PUNTAS DE LA SIERRA"
  },
  {
    "code" : "PUNTAS DE LAS ISLETAS",
    "display" : "PUNTAS DE LAS ISLETAS"
  },
  {
    "code" : "PUNTAS DE LAS VIOLETAS",
    "display" : "PUNTAS DE LAS VIOLETAS"
  },
  {
    "code" : "PUNTAS DE LAUREL",
    "display" : "PUNTAS DE LAUREL"
  },
  {
    "code" : "PUNTAS DE LAURELES",
    "display" : "PUNTAS DE LAURELES"
  },
  {
    "code" : "PUNTAS DE LEONCHO",
    "display" : "PUNTAS DE LEONCHO"
  },
  {
    "code" : "PUNTAS DE LOS CEIBOS",
    "display" : "PUNTAS DE LOS CEIBOS"
  },
  {
    "code" : "PUNTAS DE LOS CHANCHOS",
    "display" : "PUNTAS DE LOS CHANCHOS"
  },
  {
    "code" : "PUNTAS DE MACIEL",
    "display" : "PUNTAS DE MACIEL"
  },
  {
    "code" : "PUNTAS DE MALBAJAR",
    "display" : "PUNTAS DE MALBAJAR"
  },
  {
    "code" : "PUNTAS DE MANSAVILLAGRA",
    "display" : "PUNTAS DE MANSAVILLAGRA"
  },
  {
    "code" : "PUNTAS DE MARINCHO",
    "display" : "PUNTAS DE MARINCHO"
  },
  {
    "code" : "PUNTAS DE MATA SIETE",
    "display" : "PUNTAS DE MATA SIETE"
  },
  {
    "code" : "PUNTAS DE MATAOJO",
    "display" : "PUNTAS DE MATAOJO"
  },
  {
    "code" : "PUNTAS DE MELO",
    "display" : "PUNTAS DE MELO"
  },
  {
    "code" : "PUNTAS DE MOLLES",
    "display" : "PUNTAS DE MOLLES"
  },
  {
    "code" : "PUNTAS DE PALLEROS",
    "display" : "PUNTAS DE PALLEROS"
  },
  {
    "code" : "PUNTAS DE PAN DE AZUCAR",
    "display" : "PUNTAS DE PAN DE AZUCAR"
  },
  {
    "code" : "PUNTAS DE PANTANOSO",
    "display" : "PUNTAS DE PANTANOSO"
  },
  {
    "code" : "PUNTAS DE PANTANOSO ESTE",
    "display" : "PUNTAS DE PANTANOSO ESTE"
  },
  {
    "code" : "PUNTAS DE PEDRERA",
    "display" : "PUNTAS DE PEDRERA"
  },
  {
    "code" : "PUNTAS DE POLANCO",
    "display" : "PUNTAS DE POLANCO"
  },
  {
    "code" : "PUNTAS DE QUEBRACHO",
    "display" : "PUNTAS DE QUEBRACHO"
  },
  {
    "code" : "PUNTAS DE SAN FRANCISCO",
    "display" : "PUNTAS DE SAN FRANCISCO"
  },
  {
    "code" : "PUNTAS DE SAN JOSE",
    "display" : "PUNTAS DE SAN JOSE"
  },
  {
    "code" : "PUNTAS DE SAN JUAN",
    "display" : "PUNTAS DE SAN JUAN"
  },
  {
    "code" : "PUNTAS DE SAN PEDRO",
    "display" : "PUNTAS DE SAN PEDRO"
  },
  {
    "code" : "PUNTAS DE SAN SALVADOR",
    "display" : "PUNTAS DE SAN SALVADOR"
  },
  {
    "code" : "PUNTAS DE SANTA LUCIA",
    "display" : "PUNTAS DE SANTA LUCIA"
  },
  {
    "code" : "PUNTAS DE SARANDI",
    "display" : "PUNTAS DE SARANDI"
  },
  {
    "code" : "PUNTAS DE SAUCE DE MACIEL",
    "display" : "PUNTAS DE SAUCE DE MACIEL"
  },
  {
    "code" : "PUNTAS DE SOLIS",
    "display" : "PUNTAS DE SOLIS"
  },
  {
    "code" : "PUNTAS DE TACUARI",
    "display" : "PUNTAS DE TACUARI"
  },
  {
    "code" : "PUNTAS DE TOLEDO",
    "display" : "PUNTAS DE TOLEDO"
  },
  {
    "code" : "PUNTAS DE TROPA VIEJA",
    "display" : "PUNTAS DE TROPA VIEJA"
  },
  {
    "code" : "PUNTAS DE VALDEZ",
    "display" : "PUNTAS DE VALDEZ"
  },
  {
    "code" : "PUNTAS DE VALENTIN",
    "display" : "PUNTAS DE VALENTIN"
  },
  {
    "code" : "PUNTAS DE VEJIGAS",
    "display" : "PUNTAS DE VEJIGAS"
  },
  {
    "code" : "PUNTAS DEL ARENAL",
    "display" : "PUNTAS DEL ARENAL"
  },
  {
    "code" : "PUNTAS DEL ARROYO LATORRE",
    "display" : "PUNTAS DEL ARROYO LATORRE"
  },
  {
    "code" : "PUNTAS DEL CAMPANERA",
    "display" : "PUNTAS DEL CAMPANERA"
  },
  {
    "code" : "PUNTAS DEL CORRAL DE PIEDRA",
    "display" : "PUNTAS DEL CORRAL DE PIEDRA"
  },
  {
    "code" : "PUNTAS DEL ORO",
    "display" : "PUNTAS DEL ORO"
  },
  {
    "code" : "PUNTAS DEL PARAO",
    "display" : "PUNTAS DEL PARAO"
  },
  {
    "code" : "PUNTAS DEL PERDIDO",
    "display" : "PUNTAS DEL PERDIDO"
  },
  {
    "code" : "PUNTAS DEL RIACHUELO",
    "display" : "PUNTAS DEL RIACHUELO"
  },
  {
    "code" : "PUNTAS DEL ROSARIO",
    "display" : "PUNTAS DEL ROSARIO"
  },
  {
    "code" : "PUNTAS DEL SAUCE",
    "display" : "PUNTAS DEL SAUCE"
  },
  {
    "code" : "PUNTAS DEL SAUZAL",
    "display" : "PUNTAS DEL SAUZAL"
  },
  {
    "code" : "PUNTAS DEL TALA",
    "display" : "PUNTAS DEL TALA"
  },
  {
    "code" : "PUNTAS DEL YAGUARI",
    "display" : "PUNTAS DEL YAGUARI"
  },
  {
    "code" : "QUEBRACHO",
    "display" : "QUEBRACHO"
  },
  {
    "code" : "QUEGUAY GRANDE",
    "display" : "QUEGUAY GRANDE"
  },
  {
    "code" : "QUEGUAYAR",
    "display" : "QUEGUAYAR"
  },
  {
    "code" : "QUINTA LOS HORNEROS",
    "display" : "QUINTA LOS HORNEROS"
  },
  {
    "code" : "QUINTAS DEL BOSQUE",
    "display" : "QUINTAS DEL BOSQUE"
  },
  {
    "code" : "QUINTON",
    "display" : "QUINTON"
  },
  {
    "code" : "RABON",
    "display" : "RABON"
  },
  {
    "code" : "RADIAL HERNANDEZ",
    "display" : "RADIAL HERNANDEZ"
  },
  {
    "code" : "RADIAL ROSARIO",
    "display" : "RADIAL ROSARIO"
  },
  {
    "code" : "RADIAL RUTA 3",
    "display" : "RADIAL RUTA 3"
  },
  {
    "code" : "RAFAEL PERAZZA",
    "display" : "RAFAEL PERAZZA"
  },
  {
    "code" : "RAIGON",
    "display" : "RAIGON"
  },
  {
    "code" : "RAMON TRIGO",
    "display" : "RAMON TRIGO"
  },
  {
    "code" : "RANCHERIOS DE PONCE",
    "display" : "RANCHERIOS DE PONCE"
  },
  {
    "code" : "REAL DE VERA",
    "display" : "REAL DE VERA"
  },
  {
    "code" : "REBOLEDO",
    "display" : "REBOLEDO"
  },
  {
    "code" : "REDUCTO",
    "display" : "REDUCTO"
  },
  {
    "code" : "RESGUARDO CUFRE",
    "display" : "RESGUARDO CUFRE"
  },
  {
    "code" : "RETAMOSA",
    "display" : "RETAMOSA"
  },
  {
    "code" : "RIACHUELO",
    "display" : "RIACHUELO"
  },
  {
    "code" : "RINCON",
    "display" : "RINCON"
  },
  {
    "code" : "RINCON DE ALBANO",
    "display" : "RINCON DE ALBANO"
  },
  {
    "code" : "RINCON DE AMARILLO",
    "display" : "RINCON DE AMARILLO"
  },
  {
    "code" : "RINCON DE APARICIO",
    "display" : "RINCON DE APARICIO"
  },
  {
    "code" : "RINCON DE ARAZATI",
    "display" : "RINCON DE ARAZATI"
  },
  {
    "code" : "RINCON DE ARIAS",
    "display" : "RINCON DE ARIAS"
  },
  {
    "code" : "RINCON DE BUSCHENTAL",
    "display" : "RINCON DE BUSCHENTAL"
  },
  {
    "code" : "RINCON DE CAÃ‘ADA NIETO",
    "display" : "RINCON DE CAÃ‘ADA NIETO"
  },
  {
    "code" : "RINCON DE CARRASCO",
    "display" : "RINCON DE CARRASCO"
  },
  {
    "code" : "RINCON DE CEBOLLATI",
    "display" : "RINCON DE CEBOLLATI"
  },
  {
    "code" : "RINCON DE COLOLO",
    "display" : "RINCON DE COLOLO"
  },
  {
    "code" : "RINCON DE CONTRERAS",
    "display" : "RINCON DE CONTRERAS"
  },
  {
    "code" : "RINCON DE CUADRA",
    "display" : "RINCON DE CUADRA"
  },
  {
    "code" : "RINCON DE CUFRE",
    "display" : "RINCON DE CUFRE"
  },
  {
    "code" : "RINCON DE DINIZ",
    "display" : "RINCON DE DINIZ"
  },
  {
    "code" : "RINCON DE FREITAS",
    "display" : "RINCON DE FREITAS"
  },
  {
    "code" : "RINCON DE GADEA",
    "display" : "RINCON DE GADEA"
  },
  {
    "code" : "RINCON DE GILOCA",
    "display" : "RINCON DE GILOCA"
  },
  {
    "code" : "RINCON DE IGUINI",
    "display" : "RINCON DE IGUINI"
  },
  {
    "code" : "RINCON DE LA ALDEA",
    "display" : "RINCON DE LA ALDEA"
  },
  {
    "code" : "RINCON DE LA BOLSA",
    "display" : "RINCON DE LA BOLSA"
  },
  {
    "code" : "RINCON DE LA LAGUNA",
    "display" : "RINCON DE LA LAGUNA"
  },
  {
    "code" : "RINCON DE LA TORRE",
    "display" : "RINCON DE LA TORRE"
  },
  {
    "code" : "RINCON DE LA URBANA",
    "display" : "RINCON DE LA URBANA"
  },
  {
    "code" : "RINCON DE LOS CAMILOS",
    "display" : "RINCON DE LOS CAMILOS"
  },
  {
    "code" : "RINCON DE LOS CASTILLOS",
    "display" : "RINCON DE LOS CASTILLOS"
  },
  {
    "code" : "RINCON DE LOS CORONELES",
    "display" : "RINCON DE LOS CORONELES"
  },
  {
    "code" : "RINCON DE LOS FRANCOS",
    "display" : "RINCON DE LOS FRANCOS"
  },
  {
    "code" : "RINCON DE LOS MACHADO",
    "display" : "RINCON DE LOS MACHADO"
  },
  {
    "code" : "RINCON DE LOS OLIVERA",
    "display" : "RINCON DE LOS OLIVERA"
  },
  {
    "code" : "RINCON DE LOS SOSA",
    "display" : "RINCON DE LOS SOSA"
  },
  {
    "code" : "RINCON DE LOS TAPES",
    "display" : "RINCON DE LOS TAPES"
  },
  {
    "code" : "RINCON DE MARISCALA",
    "display" : "RINCON DE MARISCALA"
  },
  {
    "code" : "RINCON DE MORAES",
    "display" : "RINCON DE MORAES"
  },
  {
    "code" : "RINCON DE NAZARETH",
    "display" : "RINCON DE NAZARETH"
  },
  {
    "code" : "RINCON DE PACHECO",
    "display" : "RINCON DE PACHECO"
  },
  {
    "code" : "RINCON DE PAIVA",
    "display" : "RINCON DE PAIVA"
  },
  {
    "code" : "RINCON DE PANDO",
    "display" : "RINCON DE PANDO"
  },
  {
    "code" : "RINCON DE PEREIRA",
    "display" : "RINCON DE PEREIRA"
  },
  {
    "code" : "RINCON DE PORTEZUELO",
    "display" : "RINCON DE PORTEZUELO"
  },
  {
    "code" : "RINCON DE PY",
    "display" : "RINCON DE PY"
  },
  {
    "code" : "RINCON DE QUINTANA",
    "display" : "RINCON DE QUINTANA"
  },
  {
    "code" : "RINCON DE RODRIGUEZ",
    "display" : "RINCON DE RODRIGUEZ"
  },
  {
    "code" : "RINCON DE ROLAND",
    "display" : "RINCON DE ROLAND"
  },
  {
    "code" : "RINCON DE RUIZ",
    "display" : "RINCON DE RUIZ"
  },
  {
    "code" : "RINCON DE SILVA",
    "display" : "RINCON DE SILVA"
  },
  {
    "code" : "RINCON DE SUAREZ",
    "display" : "RINCON DE SUAREZ"
  },
  {
    "code" : "RINCON DE TACUARI",
    "display" : "RINCON DE TACUARI"
  },
  {
    "code" : "RINCON DE TRES CERROS",
    "display" : "RINCON DE TRES CERROS"
  },
  {
    "code" : "RINCON DE URTUBEY",
    "display" : "RINCON DE URTUBEY"
  },
  {
    "code" : "RINCON DE VALENTIN",
    "display" : "RINCON DE VALENTIN"
  },
  {
    "code" : "RINCON DE VALIZAS",
    "display" : "RINCON DE VALIZAS"
  },
  {
    "code" : "RINCON DE VELAZQUEZ",
    "display" : "RINCON DE VELAZQUEZ"
  },
  {
    "code" : "RINCON DE VIDAL",
    "display" : "RINCON DE VIDAL"
  },
  {
    "code" : "RINCON DE VIGNOLI",
    "display" : "RINCON DE VIGNOLI"
  },
  {
    "code" : "RINCON DE YAGUARI",
    "display" : "RINCON DE YAGUARI"
  },
  {
    "code" : "RINCON DE ZAMORA",
    "display" : "RINCON DE ZAMORA"
  },
  {
    "code" : "RINCON DEL BONETE",
    "display" : "RINCON DEL BONETE"
  },
  {
    "code" : "RINCON DEL COLORADO",
    "display" : "RINCON DEL COLORADO"
  },
  {
    "code" : "RINCON DEL CONDE",
    "display" : "RINCON DEL CONDE"
  },
  {
    "code" : "RINCON DEL GIGANTE",
    "display" : "RINCON DEL GIGANTE"
  },
  {
    "code" : "RINCON DEL INDIO",
    "display" : "RINCON DEL INDIO"
  },
  {
    "code" : "RINCON DEL PALACIO",
    "display" : "RINCON DEL PALACIO"
  },
  {
    "code" : "RINCON DEL PINO",
    "display" : "RINCON DEL PINO"
  },
  {
    "code" : "RINCON DEL REY",
    "display" : "RINCON DEL REY"
  },
  {
    "code" : "RINCON SAUCE DEL YI",
    "display" : "RINCON SAUCE DEL YI"
  },
  {
    "code" : "RIO BRANCO",
    "display" : "RIO BRANCO"
  },
  {
    "code" : "RISSO",
    "display" : "RISSO"
  },
  {
    "code" : "RIVERA",
    "display" : "RIVERA"
  },
  {
    "code" : "RIVERA CHICO",
    "display" : "RIVERA CHICO"
  },
  {
    "code" : "ROCHA",
    "display" : "ROCHA"
  },
  {
    "code" : "ROCHO",
    "display" : "ROCHO"
  },
  {
    "code" : "RODRIGUEZ",
    "display" : "RODRIGUEZ"
  },
  {
    "code" : "ROLDAN",
    "display" : "ROLDAN"
  },
  {
    "code" : "ROLON",
    "display" : "ROLON"
  },
  {
    "code" : "ROSARIO",
    "display" : "ROSARIO"
  },
  {
    "code" : "ROSARIO Y COLLA",
    "display" : "ROSARIO Y COLLA"
  },
  {
    "code" : "ROSSELL Y RIUS",
    "display" : "ROSSELL Y RIUS"
  },
  {
    "code" : "RUSSO",
    "display" : "RUSSO"
  },
  {
    "code" : "RUTA 37 Y 9",
    "display" : "RUTA 37 Y 9"
  },
  {
    "code" : "SAFICI",
    "display" : "SAFICI"
  },
  {
    "code" : "SALAMANCA",
    "display" : "SALAMANCA"
  },
  {
    "code" : "SALDAÃ‘AS",
    "display" : "SALDAÃ‘AS"
  },
  {
    "code" : "SALINAS",
    "display" : "SALINAS"
  },
  {
    "code" : "SALINAS CHICO",
    "display" : "SALINAS CHICO"
  },
  {
    "code" : "SALTO",
    "display" : "SALTO"
  },
  {
    "code" : "SAMUEL",
    "display" : "SAMUEL"
  },
  {
    "code" : "SAN ANTONIO",
    "display" : "SAN ANTONIO"
  },
  {
    "code" : "SAN BAUTISTA",
    "display" : "SAN BAUTISTA"
  },
  {
    "code" : "SAN BENITO",
    "display" : "SAN BENITO"
  },
  {
    "code" : "SAN CARLOS",
    "display" : "SAN CARLOS"
  },
  {
    "code" : "SAN DIEGO",
    "display" : "SAN DIEGO"
  },
  {
    "code" : "SAN DIOS",
    "display" : "SAN DIOS"
  },
  {
    "code" : "SAN FELIX",
    "display" : "SAN FELIX"
  },
  {
    "code" : "SAN FERNANDO",
    "display" : "SAN FERNANDO"
  },
  {
    "code" : "SAN FERNANDO CHICO",
    "display" : "SAN FERNANDO CHICO"
  },
  {
    "code" : "SAN FRANCISCO",
    "display" : "SAN FRANCISCO"
  },
  {
    "code" : "SAN FRANCISCO DE LAS SIERRAS",
    "display" : "SAN FRANCISCO DE LAS SIERRAS"
  },
  {
    "code" : "SAN GABRIEL",
    "display" : "SAN GABRIEL"
  },
  {
    "code" : "SAN GERONIMO",
    "display" : "SAN GERONIMO"
  },
  {
    "code" : "SAN GREGORIO",
    "display" : "SAN GREGORIO"
  },
  {
    "code" : "SAN GREGORIO DE FLORES",
    "display" : "SAN GREGORIO DE FLORES"
  },
  {
    "code" : "SAN GREGORIO DE POLANCO",
    "display" : "SAN GREGORIO DE POLANCO"
  },
  {
    "code" : "SAN JACINTO",
    "display" : "SAN JACINTO"
  },
  {
    "code" : "SAN JAVIER",
    "display" : "SAN JAVIER"
  },
  {
    "code" : "SAN JOAQUIN",
    "display" : "SAN JOAQUIN"
  },
  {
    "code" : "SAN JORGE",
    "display" : "SAN JORGE"
  },
  {
    "code" : "SAN JOSE DE CARRASCO",
    "display" : "SAN JOSE DE CARRASCO"
  },
  {
    "code" : "SAN JOSE DE LAS CAÃ‘AS",
    "display" : "SAN JOSE DE LAS CAÃ‘AS"
  },
  {
    "code" : "SAN JOSE DE MAYO",
    "display" : "SAN JOSE DE MAYO"
  },
  {
    "code" : "SAN JUAN",
    "display" : "SAN JUAN"
  },
  {
    "code" : "SAN JUAN DEL ESTE",
    "display" : "SAN JUAN DEL ESTE"
  },
  {
    "code" : "SAN LORENZO",
    "display" : "SAN LORENZO"
  },
  {
    "code" : "SAN LUIS",
    "display" : "SAN LUIS"
  },
  {
    "code" : "SAN LUIS AL MEDIO",
    "display" : "SAN LUIS AL MEDIO"
  },
  {
    "code" : "SAN LUIS DE TARARIRAS",
    "display" : "SAN LUIS DE TARARIRAS"
  },
  {
    "code" : "SAN LUIS SANCHEZ",
    "display" : "SAN LUIS SANCHEZ"
  },
  {
    "code" : "SAN MARTIN",
    "display" : "SAN MARTIN"
  },
  {
    "code" : "SAN MAURICIO",
    "display" : "SAN MAURICIO"
  },
  {
    "code" : "SAN MIGUEL",
    "display" : "SAN MIGUEL"
  },
  {
    "code" : "SAN PEDRO",
    "display" : "SAN PEDRO"
  },
  {
    "code" : "SAN PEDRO DE ARRIBA",
    "display" : "SAN PEDRO DE ARRIBA"
  },
  {
    "code" : "SAN PEDRO DE TIMOTE",
    "display" : "SAN PEDRO DE TIMOTE"
  },
  {
    "code" : "SAN PEDRO NORTE",
    "display" : "SAN PEDRO NORTE"
  },
  {
    "code" : "SAN RAFAEL - EL PLACER",
    "display" : "SAN RAFAEL - EL PLACER"
  },
  {
    "code" : "SAN RAMON",
    "display" : "SAN RAMON"
  },
  {
    "code" : "SAN ROQUE",
    "display" : "SAN ROQUE"
  },
  {
    "code" : "SAN SEBASTIAN",
    "display" : "SAN SEBASTIAN"
  },
  {
    "code" : "SAN SEBASTIAN DE LA PEDRERA",
    "display" : "SAN SEBASTIAN DE LA PEDRERA"
  },
  {
    "code" : "SAN SERVANDO",
    "display" : "SAN SERVANDO"
  },
  {
    "code" : "SAN VICENTE",
    "display" : "SAN VICENTE"
  },
  {
    "code" : "SANCHEZ",
    "display" : "SANCHEZ"
  },
  {
    "code" : "SANCHEZ CHICO",
    "display" : "SANCHEZ CHICO"
  },
  {
    "code" : "SANDE CHICO",
    "display" : "SANDE CHICO"
  },
  {
    "code" : "SANDU CHICO",
    "display" : "SANDU CHICO"
  },
  {
    "code" : "SANTA ADELAIDA",
    "display" : "SANTA ADELAIDA"
  },
  {
    "code" : "SANTA ANA",
    "display" : "SANTA ANA"
  },
  {
    "code" : "SANTA BERNARDINA",
    "display" : "SANTA BERNARDINA"
  },
  {
    "code" : "SANTA BLANCA",
    "display" : "SANTA BLANCA"
  },
  {
    "code" : "SANTA CATALINA",
    "display" : "SANTA CATALINA"
  },
  {
    "code" : "SANTA CLARA",
    "display" : "SANTA CLARA"
  },
  {
    "code" : "SANTA CLARA DE OLIMAR",
    "display" : "SANTA CLARA DE OLIMAR"
  },
  {
    "code" : "SANTA ELISA",
    "display" : "SANTA ELISA"
  },
  {
    "code" : "SANTA ERNESTINA",
    "display" : "SANTA ERNESTINA"
  },
  {
    "code" : "SANTA ISABEL",
    "display" : "SANTA ISABEL"
  },
  {
    "code" : "SANTA ISABEL DE LA PEDRERA",
    "display" : "SANTA ISABEL DE LA PEDRERA"
  },
  {
    "code" : "SANTA KILDA",
    "display" : "SANTA KILDA"
  },
  {
    "code" : "SANTA LUCIA",
    "display" : "SANTA LUCIA"
  },
  {
    "code" : "SANTA LUCIA DEL ESTE",
    "display" : "SANTA LUCIA DEL ESTE"
  },
  {
    "code" : "SANTA MONICA",
    "display" : "SANTA MONICA"
  },
  {
    "code" : "SANTA REGINA",
    "display" : "SANTA REGINA"
  },
  {
    "code" : "SANTA ROSA",
    "display" : "SANTA ROSA"
  },
  {
    "code" : "SANTA TERESA",
    "display" : "SANTA TERESA"
  },
  {
    "code" : "SANTA TERESA DE LA CORONILLA 1",
    "display" : "SANTA TERESA DE LA CORONILLA 1"
  },
  {
    "code" : "SANTA TERESA DE LA CORONILLA 2",
    "display" : "SANTA TERESA DE LA CORONILLA 2"
  },
  {
    "code" : "SANTA TERESITA",
    "display" : "SANTA TERESITA"
  },
  {
    "code" : "SANTIAGO VAZQUEZ",
    "display" : "SANTIAGO VAZQUEZ"
  },
  {
    "code" : "SANTOS LUGARES",
    "display" : "SANTOS LUGARES"
  },
  {
    "code" : "SARANDI",
    "display" : "SARANDI"
  },
  {
    "code" : "SARANDI CAMPANA",
    "display" : "SARANDI CAMPANA"
  },
  {
    "code" : "SARANDI CHICO",
    "display" : "SARANDI CHICO"
  },
  {
    "code" : "SARANDI DE ACEGUA",
    "display" : "SARANDI DE ACEGUA"
  },
  {
    "code" : "SARANDI DE AIGUA",
    "display" : "SARANDI DE AIGUA"
  },
  {
    "code" : "SARANDI DE ARAPEY",
    "display" : "SARANDI DE ARAPEY"
  },
  {
    "code" : "SARANDI DE BARCELO",
    "display" : "SARANDI DE BARCELO"
  },
  {
    "code" : "SARANDI DE CUARO",
    "display" : "SARANDI DE CUARO"
  },
  {
    "code" : "SARANDI DE GUTIERREZ",
    "display" : "SARANDI DE GUTIERREZ"
  },
  {
    "code" : "SARANDI DE LA CHINA",
    "display" : "SARANDI DE LA CHINA"
  },
  {
    "code" : "SARANDI DE LA INDIA MUERTA",
    "display" : "SARANDI DE LA INDIA MUERTA"
  },
  {
    "code" : "SARANDI DE MIGUES",
    "display" : "SARANDI DE MIGUES"
  },
  {
    "code" : "SARANDI DE NAVARRO",
    "display" : "SARANDI DE NAVARRO"
  },
  {
    "code" : "SARANDI DE RIO NEGRO",
    "display" : "SARANDI DE RIO NEGRO"
  },
  {
    "code" : "SARANDI DE YACUY",
    "display" : "SARANDI DE YACUY"
  },
  {
    "code" : "SARANDI DE YAGUARON",
    "display" : "SARANDI DE YAGUARON"
  },
  {
    "code" : "SARANDI DEL MATAOJO",
    "display" : "SARANDI DEL MATAOJO"
  },
  {
    "code" : "SARANDI DEL YI",
    "display" : "SARANDI DEL YI"
  },
  {
    "code" : "SARANDI GRANDE",
    "display" : "SARANDI GRANDE"
  },
  {
    "code" : "SAUCE",
    "display" : "SAUCE"
  },
  {
    "code" : "SAUCE CHICO",
    "display" : "SAUCE CHICO"
  },
  {
    "code" : "SAUCE DE ABAJO",
    "display" : "SAUCE DE ABAJO"
  },
  {
    "code" : "SAUCE DE AIGUA",
    "display" : "SAUCE DE AIGUA"
  },
  {
    "code" : "SAUCE DE BATOVI",
    "display" : "SAUCE DE BATOVI"
  },
  {
    "code" : "SAUCE DE CONVENTOS",
    "display" : "SAUCE DE CONVENTOS"
  },
  {
    "code" : "SAUCE DE CORRALES",
    "display" : "SAUCE DE CORRALES"
  },
  {
    "code" : "SAUCE DE HERRERA",
    "display" : "SAUCE DE HERRERA"
  },
  {
    "code" : "SAUCE DE MACIEL",
    "display" : "SAUCE DE MACIEL"
  },
  {
    "code" : "SAUCE DE OLIMAR CHICO",
    "display" : "SAUCE DE OLIMAR CHICO"
  },
  {
    "code" : "SAUCE DE PORTEZUELO",
    "display" : "SAUCE DE PORTEZUELO"
  },
  {
    "code" : "SAUCE DE ROCHA",
    "display" : "SAUCE DE ROCHA"
  },
  {
    "code" : "SAUCE DE SOLIS",
    "display" : "SAUCE DE SOLIS"
  },
  {
    "code" : "SAUCE DE TRANQUERAS",
    "display" : "SAUCE DE TRANQUERAS"
  },
  {
    "code" : "SAUCE DE VILLANUEVA",
    "display" : "SAUCE DE VILLANUEVA"
  },
  {
    "code" : "SAUCE DEL BURICAYUPI",
    "display" : "SAUCE DEL BURICAYUPI"
  },
  {
    "code" : "SAUCE DEL QUEGUAY",
    "display" : "SAUCE DEL QUEGUAY"
  },
  {
    "code" : "SAUCE DEL YI",
    "display" : "SAUCE DEL YI"
  },
  {
    "code" : "SAUCE SOLO",
    "display" : "SAUCE SOLO"
  },
  {
    "code" : "SAUCE SOLO DE MIGUES",
    "display" : "SAUCE SOLO DE MIGUES"
  },
  {
    "code" : "SAUCE SOLO DE MONTES",
    "display" : "SAUCE SOLO DE MONTES"
  },
  {
    "code" : "SAUCE SOLO DEL RIO NEGRO",
    "display" : "SAUCE SOLO DEL RIO NEGRO"
  },
  {
    "code" : "SAUCEDO",
    "display" : "SAUCEDO"
  },
  {
    "code" : "SAUZAL",
    "display" : "SAUZAL"
  },
  {
    "code" : "SAYAGO",
    "display" : "SAYAGO"
  },
  {
    "code" : "SCAVINO",
    "display" : "SCAVINO"
  },
  {
    "code" : "SEGARRA",
    "display" : "SEGARRA"
  },
  {
    "code" : "SEIS HERMANOS",
    "display" : "SEIS HERMANOS"
  },
  {
    "code" : "SEQUEIRA",
    "display" : "SEQUEIRA"
  },
  {
    "code" : "SHANGRILA",
    "display" : "SHANGRILA"
  },
  {
    "code" : "SIERRA DE LOS ROCHA",
    "display" : "SIERRA DE LOS ROCHA"
  },
  {
    "code" : "SIERRA DEL YERBAL",
    "display" : "SIERRA DEL YERBAL"
  },
  {
    "code" : "SIERRAS BLANCAS",
    "display" : "SIERRAS BLANCAS"
  },
  {
    "code" : "SIETE CASAS",
    "display" : "SIETE CASAS"
  },
  {
    "code" : "SOFIA SANTOS",
    "display" : "SOFIA SANTOS"
  },
  {
    "code" : "SOLDADO",
    "display" : "SOLDADO"
  },
  {
    "code" : "SOLIS",
    "display" : "SOLIS"
  },
  {
    "code" : "SOLIS CHICO",
    "display" : "SOLIS CHICO"
  },
  {
    "code" : "SOLIS CHICO DE MIGUES",
    "display" : "SOLIS CHICO DE MIGUES"
  },
  {
    "code" : "SOLIS DE MATAOJO",
    "display" : "SOLIS DE MATAOJO"
  },
  {
    "code" : "SOLIS GRANDE",
    "display" : "SOLIS GRANDE"
  },
  {
    "code" : "SOLYMAR",
    "display" : "SOLYMAR"
  },
  {
    "code" : "SOPAS",
    "display" : "SOPAS"
  },
  {
    "code" : "SOSA DIAZ",
    "display" : "SOSA DIAZ"
  },
  {
    "code" : "SOTO",
    "display" : "SOTO"
  },
  {
    "code" : "SOTO GORO",
    "display" : "SOTO GORO"
  },
  {
    "code" : "TABARE",
    "display" : "TABARE"
  },
  {
    "code" : "TABAREZ",
    "display" : "TABAREZ"
  },
  {
    "code" : "TACUAREMBO",
    "display" : "TACUAREMBO"
  },
  {
    "code" : "TACUAREMBO CHICO",
    "display" : "TACUAREMBO CHICO"
  },
  {
    "code" : "TAJAMARES DE LA PEDRERA",
    "display" : "TAJAMARES DE LA PEDRERA"
  },
  {
    "code" : "TALA",
    "display" : "TALA"
  },
  {
    "code" : "TALA DE CASTRO",
    "display" : "TALA DE CASTRO"
  },
  {
    "code" : "TALA DE MACIEL",
    "display" : "TALA DE MACIEL"
  },
  {
    "code" : "TALA DE MARISCALA",
    "display" : "TALA DE MARISCALA"
  },
  {
    "code" : "TALA DE PEREIRA",
    "display" : "TALA DE PEREIRA"
  },
  {
    "code" : "TALAS DE ITAPEBI",
    "display" : "TALAS DE ITAPEBI"
  },
  {
    "code" : "TALAS DE MACIEL",
    "display" : "TALAS DE MACIEL"
  },
  {
    "code" : "TALITA",
    "display" : "TALITA"
  },
  {
    "code" : "TAMANDUA",
    "display" : "TAMANDUA"
  },
  {
    "code" : "TAMBORES",
    "display" : "TAMBORES"
  },
  {
    "code" : "TAPES CHICO",
    "display" : "TAPES CHICO"
  },
  {
    "code" : "TAPES GRANDE",
    "display" : "TAPES GRANDE"
  },
  {
    "code" : "TARARIRAS",
    "display" : "TARARIRAS"
  },
  {
    "code" : "TARUMAN",
    "display" : "TARUMAN"
  },
  {
    "code" : "TEJERA",
    "display" : "TEJERA"
  },
  {
    "code" : "TERMAS DE ALMIRON",
    "display" : "TERMAS DE ALMIRON"
  },
  {
    "code" : "TERMAS DE GUAVIYU",
    "display" : "TERMAS DE GUAVIYU"
  },
  {
    "code" : "TERMAS DEL ARAPEY",
    "display" : "TERMAS DEL ARAPEY"
  },
  {
    "code" : "TERMAS DEL DAYMAN",
    "display" : "TERMAS DEL DAYMAN"
  },
  {
    "code" : "TERMINAL",
    "display" : "TERMINAL"
  },
  {
    "code" : "TIERRAS COLORADAS",
    "display" : "TIERRAS COLORADAS"
  },
  {
    "code" : "TOLEDO",
    "display" : "TOLEDO"
  },
  {
    "code" : "TOLEDO CHICO",
    "display" : "TOLEDO CHICO"
  },
  {
    "code" : "TOMAS BELL",
    "display" : "TOMAS BELL"
  },
  {
    "code" : "TOMAS GOMENSORO",
    "display" : "TOMAS GOMENSORO"
  },
  {
    "code" : "TOMAS PAZ",
    "display" : "TOMAS PAZ"
  },
  {
    "code" : "TOPADOR",
    "display" : "TOPADOR"
  },
  {
    "code" : "TORNERO",
    "display" : "TORNERO"
  },
  {
    "code" : "TORO NEGRO",
    "display" : "TORO NEGRO"
  },
  {
    "code" : "TOTORAL DEL SAUCE",
    "display" : "TOTORAL DEL SAUCE"
  },
  {
    "code" : "TRANQUERA COLORADA",
    "display" : "TRANQUERA COLORADA"
  },
  {
    "code" : "TRANQUERAS",
    "display" : "TRANQUERAS"
  },
  {
    "code" : "TREINTA Y TRES",
    "display" : "TREINTA Y TRES"
  },
  {
    "code" : "TRES BOCAS",
    "display" : "TRES BOCAS"
  },
  {
    "code" : "TRES BOLICHES",
    "display" : "TRES BOLICHES"
  },
  {
    "code" : "TRES CERROS",
    "display" : "TRES CERROS"
  },
  {
    "code" : "TRES CRUCES",
    "display" : "TRES CRUCES"
  },
  {
    "code" : "TRES ESQUINAS",
    "display" : "TRES ESQUINAS"
  },
  {
    "code" : "TRES GUITARRAS",
    "display" : "TRES GUITARRAS"
  },
  {
    "code" : "TRES ISLAS",
    "display" : "TRES ISLAS"
  },
  {
    "code" : "TRES OMBUES, VICTORIA",
    "display" : "TRES OMBUES, VICTORIA"
  },
  {
    "code" : "TRES PUENTES",
    "display" : "TRES PUENTES"
  },
  {
    "code" : "TRES QUINTAS",
    "display" : "TRES QUINTAS"
  },
  {
    "code" : "TRINIDAD",
    "display" : "TRINIDAD"
  },
  {
    "code" : "TROPAS VIEJAS",
    "display" : "TROPAS VIEJAS"
  },
  {
    "code" : "TROPEZON",
    "display" : "TROPEZON"
  },
  {
    "code" : "TROPIEZO",
    "display" : "TROPIEZO"
  },
  {
    "code" : "TUPAMBAE",
    "display" : "TUPAMBAE"
  },
  {
    "code" : "TURUPI",
    "display" : "TURUPI"
  },
  {
    "code" : "ULESTE",
    "display" : "ULESTE"
  },
  {
    "code" : "UNIDAD COOPERARIA No 1",
    "display" : "UNIDAD COOPERARIA No 1"
  },
  {
    "code" : "UNION",
    "display" : "UNION"
  },
  {
    "code" : "URIOSTE",
    "display" : "URIOSTE"
  },
  {
    "code" : "URUGUAY",
    "display" : "URUGUAY"
  },
  {
    "code" : "VALDEZ",
    "display" : "VALDEZ"
  },
  {
    "code" : "VALDEZ CHICO",
    "display" : "VALDEZ CHICO"
  },
  {
    "code" : "VALDIVIA",
    "display" : "VALDIVIA"
  },
  {
    "code" : "VALENTIN GRANDE",
    "display" : "VALENTIN GRANDE"
  },
  {
    "code" : "VALENTINES",
    "display" : "VALENTINES"
  },
  {
    "code" : "VALLE DE SOBA",
    "display" : "VALLE DE SOBA"
  },
  {
    "code" : "VALLE DE SOLIS",
    "display" : "VALLE DE SOLIS"
  },
  {
    "code" : "VALLE EDEN",
    "display" : "VALLE EDEN"
  },
  {
    "code" : "VEJIGAS",
    "display" : "VEJIGAS"
  },
  {
    "code" : "VEJIGAS DE SAN RAMON",
    "display" : "VEJIGAS DE SAN RAMON"
  },
  {
    "code" : "VEJIGAS DE TALA",
    "display" : "VEJIGAS DE TALA"
  },
  {
    "code" : "VELAZQUEZ",
    "display" : "VELAZQUEZ"
  },
  {
    "code" : "VERDE ALTO",
    "display" : "VERDE ALTO"
  },
  {
    "code" : "VERDUN",
    "display" : "VERDUN"
  },
  {
    "code" : "VERGARA",
    "display" : "VERGARA"
  },
  {
    "code" : "VIBORAS",
    "display" : "VIBORAS"
  },
  {
    "code" : "VIBORAS Y VACAS",
    "display" : "VIBORAS Y VACAS"
  },
  {
    "code" : "VICHADERO",
    "display" : "VICHADERO"
  },
  {
    "code" : "VIEJO MOLINO SAN BERNARDO",
    "display" : "VIEJO MOLINO SAN BERNARDO"
  },
  {
    "code" : "VIGNOLI",
    "display" : "VIGNOLI"
  },
  {
    "code" : "VILLA AEROPARQUE",
    "display" : "VILLA AEROPARQUE"
  },
  {
    "code" : "VILLA ALEJANDRINA",
    "display" : "VILLA ALEJANDRINA"
  },
  {
    "code" : "VILLA ANSINA",
    "display" : "VILLA ANSINA"
  },
  {
    "code" : "VILLA AREJO",
    "display" : "VILLA AREJO"
  },
  {
    "code" : "VILLA ARGENTINA",
    "display" : "VILLA ARGENTINA"
  },
  {
    "code" : "VILLA CRESPO Y SAN ANDRES",
    "display" : "VILLA CRESPO Y SAN ANDRES"
  },
  {
    "code" : "VILLA DARWIN",
    "display" : "VILLA DARWIN"
  },
  {
    "code" : "VILLA DEL CARMEN",
    "display" : "VILLA DEL CARMEN"
  },
  {
    "code" : "VILLA DEL ROSARIO",
    "display" : "VILLA DEL ROSARIO"
  },
  {
    "code" : "VILLA DELIA",
    "display" : "VILLA DELIA"
  },
  {
    "code" : "VILLA EL TATO",
    "display" : "VILLA EL TATO"
  },
  {
    "code" : "VILLA ENCANTADA",
    "display" : "VILLA ENCANTADA"
  },
  {
    "code" : "VILLA ESPAÃ‘OLA",
    "display" : "VILLA ESPAÃ‘OLA"
  },
  {
    "code" : "VILLA FELICIDAD",
    "display" : "VILLA FELICIDAD"
  },
  {
    "code" : "VILLA FORESTI",
    "display" : "VILLA FORESTI"
  },
  {
    "code" : "VILLA FORTUNA",
    "display" : "VILLA FORTUNA"
  },
  {
    "code" : "VILLA GABI",
    "display" : "VILLA GABI"
  },
  {
    "code" : "VILLA GARCIA, MANGA RUR.",
    "display" : "VILLA GARCIA, MANGA RUR."
  },
  {
    "code" : "VILLA GENERAL BORGES",
    "display" : "VILLA GENERAL BORGES"
  },
  {
    "code" : "VILLA HADITA",
    "display" : "VILLA HADITA"
  },
  {
    "code" : "VILLA HIPICA",
    "display" : "VILLA HIPICA"
  },
  {
    "code" : "VILLA HUERTOS DE TOLEDO",
    "display" : "VILLA HUERTOS DE TOLEDO"
  },
  {
    "code" : "VILLA INDART",
    "display" : "VILLA INDART"
  },
  {
    "code" : "VILLA JUANA",
    "display" : "VILLA JUANA"
  },
  {
    "code" : "VILLA JUANITA",
    "display" : "VILLA JUANITA"
  },
  {
    "code" : "VILLA LOS ALPES",
    "display" : "VILLA LOS ALPES"
  },
  {
    "code" : "VILLA MARIA",
    "display" : "VILLA MARIA"
  },
  {
    "code" : "VILLA MARIA (TIATUCURA)",
    "display" : "VILLA MARIA (TIATUCURA)"
  },
  {
    "code" : "VILLA MARINA",
    "display" : "VILLA MARINA"
  },
  {
    "code" : "VILLA MOLFINO",
    "display" : "VILLA MOLFINO"
  },
  {
    "code" : "VILLA MUÃ‘OZ, RETIRO",
    "display" : "VILLA MUÃ‘OZ, RETIRO"
  },
  {
    "code" : "VILLA NUEVA",
    "display" : "VILLA NUEVA"
  },
  {
    "code" : "VILLA OLIMPICA",
    "display" : "VILLA OLIMPICA"
  },
  {
    "code" : "VILLA PANCHA",
    "display" : "VILLA PANCHA"
  },
  {
    "code" : "VILLA PASSANO",
    "display" : "VILLA PASSANO"
  },
  {
    "code" : "VILLA PASTORA",
    "display" : "VILLA PASTORA"
  },
  {
    "code" : "VILLA PAZ S.A.",
    "display" : "VILLA PAZ S.A."
  },
  {
    "code" : "VILLA PRADOS DE TOLEDO",
    "display" : "VILLA PRADOS DE TOLEDO"
  },
  {
    "code" : "VILLA RIVES",
    "display" : "VILLA RIVES"
  },
  {
    "code" : "VILLA SAN CONO",
    "display" : "VILLA SAN CONO"
  },
  {
    "code" : "VILLA SAN FELIPE",
    "display" : "VILLA SAN FELIPE"
  },
  {
    "code" : "VILLA SAN JOSE",
    "display" : "VILLA SAN JOSE"
  },
  {
    "code" : "VILLA SARA",
    "display" : "VILLA SARA"
  },
  {
    "code" : "VILLA SERRANA",
    "display" : "VILLA SERRANA"
  },
  {
    "code" : "VILLA SORIANO",
    "display" : "VILLA SORIANO"
  },
  {
    "code" : "VILLA VALVERDE",
    "display" : "VILLA VALVERDE"
  },
  {
    "code" : "VILLA VIÃ‘OLES",
    "display" : "VILLA VIÃ‘OLES"
  },
  {
    "code" : "VILLA VIEJA",
    "display" : "VILLA VIEJA"
  },
  {
    "code" : "VILLASBOAS",
    "display" : "VILLASBOAS"
  },
  {
    "code" : "VINA DEL MAR",
    "display" : "VINA DEL MAR"
  },
  {
    "code" : "VISTA LINDA",
    "display" : "VISTA LINDA"
  },
  {
    "code" : "VUELTA DEL PALMAR",
    "display" : "VUELTA DEL PALMAR"
  },
  {
    "code" : "WENCESLAO SILVERA",
    "display" : "WENCESLAO SILVERA"
  },
  {
    "code" : "YACUY",
    "display" : "YACUY"
  },
  {
    "code" : "YAGUARETE",
    "display" : "YAGUARETE"
  },
  {
    "code" : "YAGUARI",
    "display" : "YAGUARI"
  },
  {
    "code" : "YERBAL CHICO",
    "display" : "YERBAL CHICO"
  },
  {
    "code" : "YERBALITO",
    "display" : "YERBALITO"
  },
  {
    "code" : "YOUNG",
    "display" : "YOUNG"
  },
  {
    "code" : "ZAGARZAZU",
    "display" : "ZAGARZAZU"
  },
  {
    "code" : "ZAMBULLON",
    "display" : "ZAMBULLON"
  },
  {
    "code" : "ZANJA ARUERA",
    "display" : "ZANJA ARUERA"
  },
  {
    "code" : "ZANJA DE ALCAIN",
    "display" : "ZANJA DE ALCAIN"
  },
  {
    "code" : "ZANJA DEL TIGRE",
    "display" : "ZANJA DEL TIGRE"
  },
  {
    "code" : "ZANJA HONDA",
    "display" : "ZANJA HONDA"
  },
  {
    "code" : "ZANJA HONDA DE TRANQUERAS",
    "display" : "ZANJA HONDA DE TRANQUERAS"
  },
  {
    "code" : "ZAPARA",
    "display" : "ZAPARA"
  },
  {
    "code" : "ZAPICAN",
    "display" : "ZAPICAN"
  },
  {
    "code" : "ZAPUCAY",
    "display" : "ZAPUCAY"
  },
  {
    "code" : "ZEBALLOS",
    "display" : "ZEBALLOS"
  },
  {
    "code" : "ZUNIN",
    "display" : "ZUNIN"
  }]
}

```
