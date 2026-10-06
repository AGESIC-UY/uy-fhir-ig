# Localidades de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Localidades de Uruguay 

 **References** 

* [Dirección (Uruguay)](StructureDefinition-uy-address.md)

### Logical Definition (CLD)

 

### Expansión

-------

 [Descripción de los cuadros anteriores](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-localidades-uy",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-localidades-uy",
  "version" : "0.1.0",
  "name" : "VSLocalidadesUY",
  "title" : "Localidades de Uruguay",
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
  "description" : "Localidades de Uruguay publicadas en el catálogo de OSE, para vincular Address.city.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.hcen.gub.uy/CodeSystem/cs-localidades-uy",
      "concept" : [{
        "code" : "18 DE JULIO",
        "display" : "18 DE JULIO"
      },
      {
        "code" : "19 DE ABRIL",
        "display" : "19 DE ABRIL"
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
        "code" : "AEROPARQUE",
        "display" : "AEROPARQUE"
      },
      {
        "code" : "AGRACIADA",
        "display" : "AGRACIADA"
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
        "code" : "AGUAS CTES.",
        "display" : "AGUAS CTES."
      },
      {
        "code" : "AGUAS DULCES",
        "display" : "AGUAS DULCES"
      },
      {
        "code" : "AIGUA",
        "display" : "AIGUA"
      },
      {
        "code" : "ALGORTA",
        "display" : "ALGORTA"
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
        "code" : "ARAMENDIA",
        "display" : "ARAMENDIA"
      },
      {
        "code" : "ARAMINDA",
        "display" : "ARAMINDA"
      },
      {
        "code" : "ARBOLITO1",
        "display" : "ARBOLITO1"
      },
      {
        "code" : "ARBOLITO2",
        "display" : "ARBOLITO2"
      },
      {
        "code" : "ARENITAS BLANCA",
        "display" : "ARENITAS BLANCA"
      },
      {
        "code" : "ARROYO BLANCO",
        "display" : "ARROYO BLANCO"
      },
      {
        "code" : "ARTIGAS",
        "display" : "ARTIGAS"
      },
      {
        "code" : "ARTILLEROS",
        "display" : "ARTILLEROS"
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
        "code" : "AYUI",
        "display" : "AYUI"
      },
      {
        "code" : "B. BRUM",
        "display" : "B. BRUM"
      },
      {
        "code" : "B. RIVERA",
        "display" : "B. RIVERA"
      },
      {
        "code" : "B.BLANCOS",
        "display" : "B.BLANCOS"
      },
      {
        "code" : "BALNEARIO BUENOS AIRES (ADCL)",
        "display" : "BALNEARIO BUENOS AIRES (ADCL)"
      },
      {
        "code" : "BAÑADO DE MEDIN",
        "display" : "BAÑADO DE MEDIN"
      },
      {
        "code" : "BARRA CARRASCO",
        "display" : "BARRA CARRASCO"
      },
      {
        "code" : "BARRA CHUY",
        "display" : "BARRA CHUY"
      },
      {
        "code" : "BARRA D VALIZAS",
        "display" : "BARRA D VALIZAS"
      },
      {
        "code" : "BARRA URUGUAYA",
        "display" : "BARRA URUGUAYA"
      },
      {
        "code" : "BARRIO ARTIGAS",
        "display" : "BARRIO ARTIGAS"
      },
      {
        "code" : "BATLLE Y ORDOÑEZ",
        "display" : "BATLLE Y ORDOÑEZ"
      },
      {
        "code" : "BELEN",
        "display" : "BELEN"
      },
      {
        "code" : "BELLA UNION",
        "display" : "BELLA UNION"
      },
      {
        "code" : "BELLO HORIZONTE",
        "display" : "BELLO HORIZONTE"
      },
      {
        "code" : "BERRONDO",
        "display" : "BERRONDO"
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
        "code" : "BLANCA ARENA",
        "display" : "BLANCA ARENA"
      },
      {
        "code" : "BLANQUILLO",
        "display" : "BLANQUILLO"
      },
      {
        "code" : "BOCA DEL CUFRE",
        "display" : "BOCA DEL CUFRE"
      },
      {
        "code" : "BOLIVAR",
        "display" : "BOLIVAR"
      },
      {
        "code" : "BONILLA",
        "display" : "BONILLA"
      },
      {
        "code" : "BRIO. ARGENTINO",
        "display" : "BRIO. ARGENTINO"
      },
      {
        "code" : "BRIO. BUENOS AIRES",
        "display" : "BRIO. BUENOS AIRES"
      },
      {
        "code" : "BRIO.ESPAÑOL",
        "display" : "BRIO.ESPAÑOL"
      },
      {
        "code" : "BRISAS DE PLATA",
        "display" : "BRISAS DE PLATA"
      },
      {
        "code" : "BRITOPOLIS",
        "display" : "BRITOPOLIS"
      },
      {
        "code" : "BRRA DE LOS CHANCHOS",
        "display" : "BRRA DE LOS CHANCHOS"
      },
      {
        "code" : "BRRIO PINTADITO",
        "display" : "BRRIO PINTADITO"
      },
      {
        "code" : "BRRIO.ALBISU",
        "display" : "BRRIO.ALBISU"
      },
      {
        "code" : "BURICAYUPI",
        "display" : "BURICAYUPI"
      },
      {
        "code" : "C. DEL PERDIDO",
        "display" : "C. DEL PERDIDO"
      },
      {
        "code" : "C.COLORADO",
        "display" : "C.COLORADO"
      },
      {
        "code" : "C.MIGUELETE",
        "display" : "C.MIGUELETE"
      },
      {
        "code" : "C.REYLES",
        "display" : "C.REYLES"
      },
      {
        "code" : "C.ROSSEL",
        "display" : "C.ROSSEL"
      },
      {
        "code" : "C.VALDENSE",
        "display" : "C.VALDENSE"
      },
      {
        "code" : "CAMPAMENTO",
        "display" : "CAMPAMENTO"
      },
      {
        "code" : "CANELONES",
        "display" : "CANELONES"
      },
      {
        "code" : "CAÑADA DEL ESTADO",
        "display" : "CAÑADA DEL ESTADO"
      },
      {
        "code" : "CAÑADA MILAN",
        "display" : "CAÑADA MILAN"
      },
      {
        "code" : "CAÑADA NIETO",
        "display" : "CAÑADA NIETO"
      },
      {
        "code" : "CAP. FARRUCO",
        "display" : "CAP. FARRUCO"
      },
      {
        "code" : "CAPILLA D CELLA",
        "display" : "CAPILLA D CELLA"
      },
      {
        "code" : "CAPURRO",
        "display" : "CAPURRO"
      },
      {
        "code" : "CARAGUATA NORTE",
        "display" : "CARAGUATA NORTE"
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
        "code" : "CARDOZO CHICO",
        "display" : "CARDOZO CHICO"
      },
      {
        "code" : "CARDOZO GRANDE",
        "display" : "CARDOZO GRANDE"
      },
      {
        "code" : "CARMELO",
        "display" : "CARMELO"
      },
      {
        "code" : "CARRETA QUEMADA",
        "display" : "CARRETA QUEMADA"
      },
      {
        "code" : "CASTILLOS",
        "display" : "CASTILLOS"
      },
      {
        "code" : "CASUPA",
        "display" : "CASUPA"
      },
      {
        "code" : "CDAD.DEL PLATA",
        "display" : "CDAD.DEL PLATA"
      },
      {
        "code" : "CEBOLLATI",
        "display" : "CEBOLLATI"
      },
      {
        "code" : "CERRILLADA",
        "display" : "CERRILLADA"
      },
      {
        "code" : "CERRILLOS",
        "display" : "CERRILLOS"
      },
      {
        "code" : "CERRO CHATO1",
        "display" : "CERRO CHATO1"
      },
      {
        "code" : "CERRO CHATO2",
        "display" : "CERRO CHATO2"
      },
      {
        "code" : "CERRO COLORADO",
        "display" : "CERRO COLORADO"
      },
      {
        "code" : "CERRO CUENTAS",
        "display" : "CERRO CUENTAS"
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
        "code" : "CERRO PEREYRA",
        "display" : "CERRO PEREYRA"
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
        "code" : "CHAMBERLAIN",
        "display" : "CHAMBERLAIN"
      },
      {
        "code" : "CHAMIZO",
        "display" : "CHAMIZO"
      },
      {
        "code" : "CHAPICUY",
        "display" : "CHAPICUY"
      },
      {
        "code" : "CHINGOLAS",
        "display" : "CHINGOLAS"
      },
      {
        "code" : "CHUY",
        "display" : "CHUY"
      },
      {
        "code" : "CLARA",
        "display" : "CLARA"
      },
      {
        "code" : "COLINAS",
        "display" : "COLINAS"
      },
      {
        "code" : "COLONIA",
        "display" : "COLONIA"
      },
      {
        "code" : "COLONIA 18 JUL.",
        "display" : "COLONIA 18 JUL."
      },
      {
        "code" : "COLONIA GARIBALDI",
        "display" : "COLONIA GARIBALDI"
      },
      {
        "code" : "COLONIA ITAPEBI",
        "display" : "COLONIA ITAPEBI"
      },
      {
        "code" : "COLONIA LAVALLE",
        "display" : "COLONIA LAVALLE"
      },
      {
        "code" : "COLONIA NICOLIC",
        "display" : "COLONIA NICOLIC"
      },
      {
        "code" : "CONCHILLAS",
        "display" : "CONCHILLAS"
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
        "code" : "COSMOPOLITA",
        "display" : "COSMOPOLITA"
      },
      {
        "code" : "COSTA AZUL1",
        "display" : "COSTA AZUL1"
      },
      {
        "code" : "COSTA AZUL2",
        "display" : "COSTA AZUL2"
      },
      {
        "code" : "CRUZ DE CAMINOS",
        "display" : "CRUZ DE CAMINOS"
      },
      {
        "code" : "CUARO",
        "display" : "CUARO"
      },
      {
        "code" : "CUARÓ",
        "display" : "CUARÓ"
      },
      {
        "code" : "CUARO CHICO",
        "display" : "CUARO CHICO"
      },
      {
        "code" : "CUCHILLA ALTA",
        "display" : "CUCHILLA ALTA"
      },
      {
        "code" : "CUCHILLA DEL OMBU",
        "display" : "CUCHILLA DEL OMBU"
      },
      {
        "code" : "CUFRE",
        "display" : "CUFRE"
      },
      {
        "code" : "CURTINA",
        "display" : "CURTINA"
      },
      {
        "code" : "DAYMAN",
        "display" : "DAYMAN"
      },
      {
        "code" : "DOLORES",
        "display" : "DOLORES"
      },
      {
        "code" : "DURAZNO",
        "display" : "DURAZNO"
      },
      {
        "code" : "E.MARTINEZ",
        "display" : "E.MARTINEZ"
      },
      {
        "code" : "ECILDA PAULIER",
        "display" : "ECILDA PAULIER"
      },
      {
        "code" : "EGAÑA",
        "display" : "EGAÑA"
      },
      {
        "code" : "EL BELLACO",
        "display" : "EL BELLACO"
      },
      {
        "code" : "EL CHORRO",
        "display" : "EL CHORRO"
      },
      {
        "code" : "EL EUCALIPTO",
        "display" : "EL EUCALIPTO"
      },
      {
        "code" : "EL PINAR - SUR",
        "display" : "EL PINAR - SUR"
      },
      {
        "code" : "EL TALA",
        "display" : "EL TALA"
      },
      {
        "code" : "EL TESORO",
        "display" : "EL TESORO"
      },
      {
        "code" : "ESPERANZA",
        "display" : "ESPERANZA"
      },
      {
        "code" : "EST.ATLANTIDA",
        "display" : "EST.ATLANTIDA"
      },
      {
        "code" : "EST.LA FLORESTA",
        "display" : "EST.LA FLORESTA"
      },
      {
        "code" : "ESTANZUELA",
        "display" : "ESTANZUELA"
      },
      {
        "code" : "F.MARCOS",
        "display" : "F.MARCOS"
      },
      {
        "code" : "F.STA.ROSA",
        "display" : "F.STA.ROSA"
      },
      {
        "code" : "FCIO. SANCHEZ",
        "display" : "FCIO. SANCHEZ"
      },
      {
        "code" : "FEDERACION",
        "display" : "FEDERACION"
      },
      {
        "code" : "FELICIANO",
        "display" : "FELICIANO"
      },
      {
        "code" : "FERRER",
        "display" : "FERRER"
      },
      {
        "code" : "FLORIDA",
        "display" : "FLORIDA"
      },
      {
        "code" : "FOMENTO",
        "display" : "FOMENTO"
      },
      {
        "code" : "FRAILE MUERTO",
        "display" : "FRAILE MUERTO"
      },
      {
        "code" : "FRAY BENTOS",
        "display" : "FRAY BENTOS"
      },
      {
        "code" : "FUNDACION POLANCO",
        "display" : "FUNDACION POLANCO"
      },
      {
        "code" : "G.AZNARES",
        "display" : "G.AZNARES"
      },
      {
        "code" : "GALLINAL",
        "display" : "GALLINAL"
      },
      {
        "code" : "GARZON",
        "display" : "GARZON"
      },
      {
        "code" : "GOMENSORO",
        "display" : "GOMENSORO"
      },
      {
        "code" : "GONZALEZ",
        "display" : "GONZALEZ"
      },
      {
        "code" : "GOÑI",
        "display" : "GOÑI"
      },
      {
        "code" : "GUAYUVIRA",
        "display" : "GUAYUVIRA"
      },
      {
        "code" : "GUAZUBIRA",
        "display" : "GUAZUBIRA"
      },
      {
        "code" : "GUAZUBIRA VIEJO",
        "display" : "GUAZUBIRA VIEJO"
      },
      {
        "code" : "GUICHON",
        "display" : "GUICHON"
      },
      {
        "code" : "I. CORTINAS",
        "display" : "I. CORTINAS"
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
        "code" : "ISIDORO NOBLIA",
        "display" : "ISIDORO NOBLIA"
      },
      {
        "code" : "ISLA PATRULLA",
        "display" : "ISLA PATRULLA"
      },
      {
        "code" : "ITUZAINGO",
        "display" : "ITUZAINGO"
      },
      {
        "code" : "J.J. CASTRO",
        "display" : "J.J. CASTRO"
      },
      {
        "code" : "J.LACAZE",
        "display" : "J.LACAZE"
      },
      {
        "code" : "J.P.VARELA",
        "display" : "J.P.VARELA"
      },
      {
        "code" : "JACKSON",
        "display" : "JACKSON"
      },
      {
        "code" : "JOANICO",
        "display" : "JOANICO"
      },
      {
        "code" : "JOSE IGNACIO",
        "display" : "JOSE IGNACIO"
      },
      {
        "code" : "JOSE IGNACIO (ADCL)",
        "display" : "JOSE IGNACIO (ADCL)"
      },
      {
        "code" : "JUAN SOLER",
        "display" : "JUAN SOLER"
      },
      {
        "code" : "KILOMETRO 110",
        "display" : "KILOMETRO 110"
      },
      {
        "code" : "KIYU",
        "display" : "KIYU"
      },
      {
        "code" : "L.GEIRES",
        "display" : "L.GEIRES"
      },
      {
        "code" : "LA AGUADA",
        "display" : "LA AGUADA"
      },
      {
        "code" : "LA ALDEA",
        "display" : "LA ALDEA"
      },
      {
        "code" : "LA BARRA",
        "display" : "LA BARRA"
      },
      {
        "code" : "LA BOLSA",
        "display" : "LA BOLSA"
      },
      {
        "code" : "LA BOTA",
        "display" : "LA BOTA"
      },
      {
        "code" : "LA BOTA ZB",
        "display" : "LA BOTA ZB"
      },
      {
        "code" : "LA BOYADA",
        "display" : "LA BOYADA"
      },
      {
        "code" : "LA CALERA",
        "display" : "LA CALERA"
      },
      {
        "code" : "LA CALZADA",
        "display" : "LA CALZADA"
      },
      {
        "code" : "LA CAPUERA",
        "display" : "LA CAPUERA"
      },
      {
        "code" : "LA CAPUERA (ZB)",
        "display" : "LA CAPUERA (ZB)"
      },
      {
        "code" : "LA CASILLA",
        "display" : "LA CASILLA"
      },
      {
        "code" : "LA CONCORDIA",
        "display" : "LA CONCORDIA"
      },
      {
        "code" : "LA CORONILLA",
        "display" : "LA CORONILLA"
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
        "code" : "LA FLORESTA",
        "display" : "LA FLORESTA"
      },
      {
        "code" : "LA HILERA",
        "display" : "LA HILERA"
      },
      {
        "code" : "LA JUANITA",
        "display" : "LA JUANITA"
      },
      {
        "code" : "LA MACANA",
        "display" : "LA MACANA"
      },
      {
        "code" : "LA MICAELA",
        "display" : "LA MICAELA"
      },
      {
        "code" : "LA PALMA",
        "display" : "LA PALMA"
      },
      {
        "code" : "LA PALOMA1",
        "display" : "LA PALOMA1"
      },
      {
        "code" : "LA PALOMA2",
        "display" : "LA PALOMA2"
      },
      {
        "code" : "LA PAZ1",
        "display" : "LA PAZ1"
      },
      {
        "code" : "LA PAZ2",
        "display" : "LA PAZ2"
      },
      {
        "code" : "LA PEDRERA",
        "display" : "LA PEDRERA"
      },
      {
        "code" : "LA PUENTE",
        "display" : "LA PUENTE"
      },
      {
        "code" : "LA TENTACION",
        "display" : "LA TENTACION"
      },
      {
        "code" : "LA TUNA",
        "display" : "LA TUNA"
      },
      {
        "code" : "LAGO MERIN",
        "display" : "LAGO MERIN"
      },
      {
        "code" : "LAGOMAR NORTE",
        "display" : "LAGOMAR NORTE"
      },
      {
        "code" : "LAGOMAR SUR",
        "display" : "LAGOMAR SUR"
      },
      {
        "code" : "LAGUNA DE ROCHA",
        "display" : "LAGUNA DE ROCHA"
      },
      {
        "code" : "LAMAS",
        "display" : "LAMAS"
      },
      {
        "code" : "LAS CHILCAS",
        "display" : "LAS CHILCAS"
      },
      {
        "code" : "LAS FLORES",
        "display" : "LAS FLORES"
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
        "code" : "LAS PIEDRAS",
        "display" : "LAS PIEDRAS"
      },
      {
        "code" : "LAS TOSCAS NORT",
        "display" : "LAS TOSCAS NORT"
      },
      {
        "code" : "LAS TOSCAS1",
        "display" : "LAS TOSCAS1"
      },
      {
        "code" : "LAS TOSCAS2",
        "display" : "LAS TOSCAS2"
      },
      {
        "code" : "LAS VEGAS NORTE",
        "display" : "LAS VEGAS NORTE"
      },
      {
        "code" : "LAS VEGAS SUR",
        "display" : "LAS VEGAS SUR"
      },
      {
        "code" : "LASCANO",
        "display" : "LASCANO"
      },
      {
        "code" : "LAURELES",
        "display" : "LAURELES"
      },
      {
        "code" : "LIBERTAD",
        "display" : "LIBERTAD"
      },
      {
        "code" : "LOMAS D SOLYMAR",
        "display" : "LOMAS D SOLYMAR"
      },
      {
        "code" : "LOMAS NORTE",
        "display" : "LOMAS NORTE"
      },
      {
        "code" : "LOMAS SOLYMAR 3",
        "display" : "LOMAS SOLYMAR 3"
      },
      {
        "code" : "LOS CERROS",
        "display" : "LOS CERROS"
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
        "code" : "LOS HIGUERONES",
        "display" : "LOS HIGUERONES"
      },
      {
        "code" : "LOS PINOS",
        "display" : "LOS PINOS"
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
        "code" : "LOS TITANES",
        "display" : "LOS TITANES"
      },
      {
        "code" : "M ALBINA",
        "display" : "M ALBINA"
      },
      {
        "code" : "M.CHICO",
        "display" : "M.CHICO"
      },
      {
        "code" : "M.CORAL",
        "display" : "M.CORAL"
      },
      {
        "code" : "M.DE CORRALES",
        "display" : "M.DE CORRALES"
      },
      {
        "code" : "M.GRANDE",
        "display" : "M.GRANDE"
      },
      {
        "code" : "MACIEL",
        "display" : "MACIEL"
      },
      {
        "code" : "MAL ABRIGO",
        "display" : "MAL ABRIGO"
      },
      {
        "code" : "MALDONADO",
        "display" : "MALDONADO"
      },
      {
        "code" : "MALDONADO (ZB)",
        "display" : "MALDONADO (ZB)"
      },
      {
        "code" : "MALVAREZ",
        "display" : "MALVAREZ"
      },
      {
        "code" : "MANANTIALES",
        "display" : "MANANTIALES"
      },
      {
        "code" : "MANGRULLO",
        "display" : "MANGRULLO"
      },
      {
        "code" : "MARGAT",
        "display" : "MARGAT"
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
        "code" : "MASOLLER",
        "display" : "MASOLLER"
      },
      {
        "code" : "MEDANOS NORTE",
        "display" : "MEDANOS NORTE"
      },
      {
        "code" : "MEDANOS SOLYMAR",
        "display" : "MEDANOS SOLYMAR"
      },
      {
        "code" : "MELLIZOS",
        "display" : "MELLIZOS"
      },
      {
        "code" : "MELO",
        "display" : "MELO"
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
        "code" : "MIGUEZ",
        "display" : "MIGUEZ"
      },
      {
        "code" : "MINAS",
        "display" : "MINAS"
      },
      {
        "code" : "MOIRONES",
        "display" : "MOIRONES"
      },
      {
        "code" : "MONTES",
        "display" : "MONTES"
      },
      {
        "code" : "MONTES SOLYMAR",
        "display" : "MONTES SOLYMAR"
      },
      {
        "code" : "MONTEVIDEO",
        "display" : "MONTEVIDEO"
      },
      {
        "code" : "MONTVIDEO CHICO",
        "display" : "MONTVIDEO CHICO"
      },
      {
        "code" : "MORATO",
        "display" : "MORATO"
      },
      {
        "code" : "N.HELVECIA",
        "display" : "N.HELVECIA"
      },
      {
        "code" : "N.PALMIRA",
        "display" : "N.PALMIRA"
      },
      {
        "code" : "NEPTUNIA NORTE",
        "display" : "NEPTUNIA NORTE"
      },
      {
        "code" : "NEPTUNIA SUR",
        "display" : "NEPTUNIA SUR"
      },
      {
        "code" : "NUEVA CARRARA",
        "display" : "NUEVA CARRARA"
      },
      {
        "code" : "NUEVO BERLIN",
        "display" : "NUEVO BERLIN"
      },
      {
        "code" : "O.DE LAVALLE",
        "display" : "O.DE LAVALLE"
      },
      {
        "code" : "O.DE ORIBE",
        "display" : "O.DE ORIBE"
      },
      {
        "code" : "OCEAN PARK",
        "display" : "OCEAN PARK"
      },
      {
        "code" : "ORGOROZO",
        "display" : "ORGOROZO"
      },
      {
        "code" : "P. CASTELLANOS",
        "display" : "P. CASTELLANOS"
      },
      {
        "code" : "P.AZUCAR",
        "display" : "P.AZUCAR"
      },
      {
        "code" : "P.CERRO",
        "display" : "P.CERRO"
      },
      {
        "code" : "P.D.PLATA NORTE",
        "display" : "P.D.PLATA NORTE"
      },
      {
        "code" : "P.DE PACHE",
        "display" : "P.DE PACHE"
      },
      {
        "code" : "P.DEL PLATA",
        "display" : "P.DEL PLATA"
      },
      {
        "code" : "P.DEL.ESTE",
        "display" : "P.DEL.ESTE"
      },
      {
        "code" : "P.SEVERINO",
        "display" : "P.SEVERINO"
      },
      {
        "code" : "P.SOLA",
        "display" : "P.SOLA"
      },
      {
        "code" : "P.TOROS",
        "display" : "P.TOROS"
      },
      {
        "code" : "PALMITAS",
        "display" : "PALMITAS"
      },
      {
        "code" : "PALO SOLO",
        "display" : "PALO SOLO"
      },
      {
        "code" : "PANDO",
        "display" : "PANDO"
      },
      {
        "code" : "PANDULE",
        "display" : "PANDULE"
      },
      {
        "code" : "PARAJE PENSE",
        "display" : "PARAJE PENSE"
      },
      {
        "code" : "PARALLÉ",
        "display" : "PARALLÉ"
      },
      {
        "code" : "PARQUE MIRAMAR",
        "display" : "PARQUE MIRAMAR"
      },
      {
        "code" : "PARQUE SOLYMAR",
        "display" : "PARQUE SOLYMAR"
      },
      {
        "code" : "PASANO",
        "display" : "PASANO"
      },
      {
        "code" : "PASO ARRIERA",
        "display" : "PASO ARRIERA"
      },
      {
        "code" : "PASO ATAQUES",
        "display" : "PASO ATAQUES"
      },
      {
        "code" : "PASO CARRASCO",
        "display" : "PASO CARRASCO"
      },
      {
        "code" : "PASO D PARQUE",
        "display" : "PASO D PARQUE"
      },
      {
        "code" : "PASO DE LA CRUZ",
        "display" : "PASO DE LA CRUZ"
      },
      {
        "code" : "PASO DE LAS CARRETAS",
        "display" : "PASO DE LAS CARRETAS"
      },
      {
        "code" : "PASO DE LOS NOVILLOS",
        "display" : "PASO DE LOS NOVILLOS"
      },
      {
        "code" : "PASO DEL MEDIO",
        "display" : "PASO DEL MEDIO"
      },
      {
        "code" : "PASO DEL TAPADO",
        "display" : "PASO DEL TAPADO"
      },
      {
        "code" : "PASO FARIAS",
        "display" : "PASO FARIAS"
      },
      {
        "code" : "PASO HOSPITAL",
        "display" : "PASO HOSPITAL"
      },
      {
        "code" : "PASO PEREIRA",
        "display" : "PASO PEREIRA"
      },
      {
        "code" : "PAYSANDU",
        "display" : "PAYSANDU"
      },
      {
        "code" : "PBLO. FERNANDEZ",
        "display" : "PBLO. FERNANDEZ"
      },
      {
        "code" : "PERALTA",
        "display" : "PERALTA"
      },
      {
        "code" : "PIEDRA DEL TORO",
        "display" : "PIEDRA DEL TORO"
      },
      {
        "code" : "PIEDRAS.COLORA.",
        "display" : "PIEDRAS.COLORA."
      },
      {
        "code" : "PINAMAR NORTE",
        "display" : "PINAMAR NORTE"
      },
      {
        "code" : "PINAMAR SUR",
        "display" : "PINAMAR SUR"
      },
      {
        "code" : "PINAR - NORTE",
        "display" : "PINAR - NORTE"
      },
      {
        "code" : "PINARES",
        "display" : "PINARES"
      },
      {
        "code" : "PINARES - ATL",
        "display" : "PINARES - ATL"
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
        "code" : "PIÑERA",
        "display" : "PIÑERA"
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
        "code" : "PIRIAPOLIS INT",
        "display" : "PIRIAPOLIS INT"
      },
      {
        "code" : "PLACIDO ROSAS",
        "display" : "PLACIDO ROSAS"
      },
      {
        "code" : "POBLADO ALONSO",
        "display" : "POBLADO ALONSO"
      },
      {
        "code" : "POBLADO EL ORO",
        "display" : "POBLADO EL ORO"
      },
      {
        "code" : "POBLADO URUGUAY",
        "display" : "POBLADO URUGUAY"
      },
      {
        "code" : "POLANCO DEL YI",
        "display" : "POLANCO DEL YI"
      },
      {
        "code" : "POLANCO LAVALLEJA",
        "display" : "POLANCO LAVALLEJA"
      },
      {
        "code" : "PORVENIR",
        "display" : "PORVENIR"
      },
      {
        "code" : "PROGRESO",
        "display" : "PROGRESO"
      },
      {
        "code" : "PTA. DE VALDEZ",
        "display" : "PTA. DE VALDEZ"
      },
      {
        "code" : "PTA. DEL DIABLO",
        "display" : "PTA. DEL DIABLO"
      },
      {
        "code" : "PUEBLO AREVALO",
        "display" : "PUEBLO AREVALO"
      },
      {
        "code" : "PUEBLO CASTILLO",
        "display" : "PUEBLO CASTILLO"
      },
      {
        "code" : "PUEBLO CELESTE",
        "display" : "PUEBLO CELESTE"
      },
      {
        "code" : "PUEBLO COLON",
        "display" : "PUEBLO COLON"
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
        "code" : "PUEBLO EDEN",
        "display" : "PUEBLO EDEN"
      },
      {
        "code" : "PUEBLO GRECO",
        "display" : "PUEBLO GRECO"
      },
      {
        "code" : "PUEBLO HERIBERTO",
        "display" : "PUEBLO HERIBERTO"
      },
      {
        "code" : "PUEBLO LA BOLSA",
        "display" : "PUEBLO LA BOLSA"
      },
      {
        "code" : "PUEBLO NUEVO",
        "display" : "PUEBLO NUEVO"
      },
      {
        "code" : "PUEBLO SOTO",
        "display" : "PUEBLO SOTO"
      },
      {
        "code" : "PUEBLO ZEBALLOS",
        "display" : "PUEBLO ZEBALLOS"
      },
      {
        "code" : "PUENTE DE VALIZAS",
        "display" : "PUENTE DE VALIZAS"
      },
      {
        "code" : "PUIMAYEN",
        "display" : "PUIMAYEN"
      },
      {
        "code" : "PUNTA 5 SAUCES",
        "display" : "PUNTA 5 SAUCES"
      },
      {
        "code" : "PUNTA BALLENA",
        "display" : "PUNTA BALLENA"
      },
      {
        "code" : "PUNTA RUBIA",
        "display" : "PUNTA RUBIA"
      },
      {
        "code" : "PUNTAS DEL PARAO",
        "display" : "PUNTAS DEL PARAO"
      },
      {
        "code" : "QUEBRACHO",
        "display" : "QUEBRACHO"
      },
      {
        "code" : "QUEGUAY CHICO",
        "display" : "QUEGUAY CHICO"
      },
      {
        "code" : "QUEGUAYAR",
        "display" : "QUEGUAYAR"
      },
      {
        "code" : "RADIAL",
        "display" : "RADIAL"
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
        "code" : "REBOLEDO",
        "display" : "REBOLEDO"
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
        "code" : "RINCON DE PACHECO",
        "display" : "RINCON DE PACHECO"
      },
      {
        "code" : "RINCON DE PINTADO",
        "display" : "RINCON DE PINTADO"
      },
      {
        "code" : "RINCON DEL PINO",
        "display" : "RINCON DEL PINO"
      },
      {
        "code" : "RINCON PEREIRA",
        "display" : "RINCON PEREIRA"
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
        "code" : "ROCHA",
        "display" : "ROCHA"
      },
      {
        "code" : "RODO",
        "display" : "RODO"
      },
      {
        "code" : "RODRIGUEZ",
        "display" : "RODRIGUEZ"
      },
      {
        "code" : "ROSARIO",
        "display" : "ROSARIO"
      },
      {
        "code" : "S.ANTONIO",
        "display" : "S.ANTONIO"
      },
      {
        "code" : "S.BAUTISTA",
        "display" : "S.BAUTISTA"
      },
      {
        "code" : "S.DEL YI",
        "display" : "S.DEL YI"
      },
      {
        "code" : "S.GRANDE",
        "display" : "S.GRANDE"
      },
      {
        "code" : "S.GREGORIO",
        "display" : "S.GREGORIO"
      },
      {
        "code" : "S.JACINTO",
        "display" : "S.JACINTO"
      },
      {
        "code" : "S.JORGE",
        "display" : "S.JORGE"
      },
      {
        "code" : "S.RAMON",
        "display" : "S.RAMON"
      },
      {
        "code" : "SACACHISPAS",
        "display" : "SACACHISPAS"
      },
      {
        "code" : "SALINAS",
        "display" : "SALINAS"
      },
      {
        "code" : "SALTO",
        "display" : "SALTO"
      },
      {
        "code" : "SAN ANTONIO",
        "display" : "SAN ANTONIO"
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
        "code" : "SAN CRISTOBAL",
        "display" : "SAN CRISTOBAL"
      },
      {
        "code" : "SAN GABRIEL",
        "display" : "SAN GABRIEL"
      },
      {
        "code" : "SAN GREGORIO",
        "display" : "SAN GREGORIO"
      },
      {
        "code" : "SAN JAVIER",
        "display" : "SAN JAVIER"
      },
      {
        "code" : "SAN JOSE",
        "display" : "SAN JOSE"
      },
      {
        "code" : "SAN LUIS",
        "display" : "SAN LUIS"
      },
      {
        "code" : "SAN LUIS(CNLNES)",
        "display" : "SAN LUIS(CNLNES)"
      },
      {
        "code" : "SAN PEDRO",
        "display" : "SAN PEDRO"
      },
      {
        "code" : "SANCHEZ",
        "display" : "SANCHEZ"
      },
      {
        "code" : "SANTA ANA",
        "display" : "SANTA ANA"
      },
      {
        "code" : "SANTA ANA C",
        "display" : "SANTA ANA C"
      },
      {
        "code" : "SANTA CLARA",
        "display" : "SANTA CLARA"
      },
      {
        "code" : "SANTA MONICA",
        "display" : "SANTA MONICA"
      },
      {
        "code" : "SANTA TERESITA",
        "display" : "SANTA TERESITA"
      },
      {
        "code" : "SAU.DEL YI",
        "display" : "SAU.DEL YI"
      },
      {
        "code" : "SAUCE",
        "display" : "SAUCE"
      },
      {
        "code" : "SAUCE DE BATOVI",
        "display" : "SAUCE DE BATOVI"
      },
      {
        "code" : "SAUCE DE PORTEZUELO",
        "display" : "SAUCE DE PORTEZUELO"
      },
      {
        "code" : "SAUCE.",
        "display" : "SAUCE."
      },
      {
        "code" : "SDI. DE NAVARRO",
        "display" : "SDI. DE NAVARRO"
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
        "code" : "SJ.CARRASCO NOR",
        "display" : "SJ.CARRASCO NOR"
      },
      {
        "code" : "SJ.CARRASCO SUR",
        "display" : "SJ.CARRASCO SUR"
      },
      {
        "code" : "SOCA",
        "display" : "SOCA"
      },
      {
        "code" : "SOLIS",
        "display" : "SOLIS"
      },
      {
        "code" : "SOLIS DE MATAOJ",
        "display" : "SOLIS DE MATAOJ"
      },
      {
        "code" : "SOLYMAR NORTE",
        "display" : "SOLYMAR NORTE"
      },
      {
        "code" : "SOLYMAR SUR",
        "display" : "SOLYMAR SUR"
      },
      {
        "code" : "SOUDRIERS",
        "display" : "SOUDRIERS"
      },
      {
        "code" : "STA. CATALINA",
        "display" : "STA. CATALINA"
      },
      {
        "code" : "STA. LUCIA DEL ESTE",
        "display" : "STA. LUCIA DEL ESTE"
      },
      {
        "code" : "STA. ROSA",
        "display" : "STA. ROSA"
      },
      {
        "code" : "STA.LUCIA",
        "display" : "STA.LUCIA"
      },
      {
        "code" : "SUAREZ",
        "display" : "SUAREZ"
      },
      {
        "code" : "T.TRES",
        "display" : "T.TRES"
      },
      {
        "code" : "TACUAREMBO",
        "display" : "TACUAREMBO"
      },
      {
        "code" : "TALA",
        "display" : "TALA"
      },
      {
        "code" : "TAMBORES",
        "display" : "TAMBORES"
      },
      {
        "code" : "TAPIA",
        "display" : "TAPIA"
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
        "code" : "TIATUCURA",
        "display" : "TIATUCURA"
      },
      {
        "code" : "TIERR COLORADAS",
        "display" : "TIERR COLORADAS"
      },
      {
        "code" : "TOLEDO",
        "display" : "TOLEDO"
      },
      {
        "code" : "TOPADOR",
        "display" : "TOPADOR"
      },
      {
        "code" : "TOTORAL D SAUCE",
        "display" : "TOTORAL D SAUCE"
      },
      {
        "code" : "TRANQUERAS",
        "display" : "TRANQUERAS"
      },
      {
        "code" : "TRES ISLAS",
        "display" : "TRES ISLAS"
      },
      {
        "code" : "TRINIDAD",
        "display" : "TRINIDAD"
      },
      {
        "code" : "TUPAMBAE",
        "display" : "TUPAMBAE"
      },
      {
        "code" : "V.ANSINA",
        "display" : "V.ANSINA"
      },
      {
        "code" : "V.ARGENTINA",
        "display" : "V.ARGENTINA"
      },
      {
        "code" : "V.CARMEN",
        "display" : "V.CARMEN"
      },
      {
        "code" : "VALENTIN",
        "display" : "VALENTIN"
      },
      {
        "code" : "VALENTINES",
        "display" : "VALENTINES"
      },
      {
        "code" : "VALLE SOBA",
        "display" : "VALLE SOBA"
      },
      {
        "code" : "VELAZQUEZ",
        "display" : "VELAZQUEZ"
      },
      {
        "code" : "VERGARA",
        "display" : "VERGARA"
      },
      {
        "code" : "VIANA",
        "display" : "VIANA"
      },
      {
        "code" : "VICHADERO",
        "display" : "VICHADERO"
      },
      {
        "code" : "VILLA MARIA",
        "display" : "VILLA MARIA"
      },
      {
        "code" : "VILLA MONTAÑESA",
        "display" : "VILLA MONTAÑESA"
      },
      {
        "code" : "VILLA OLMOS",
        "display" : "VILLA OLMOS"
      },
      {
        "code" : "VILLA SARA",
        "display" : "VILLA SARA"
      },
      {
        "code" : "VILLA SORIANO",
        "display" : "VILLA SORIANO"
      },
      {
        "code" : "YOUNG",
        "display" : "YOUNG"
      },
      {
        "code" : "ZAPICAN",
        "display" : "ZAPICAN"
      }]
    }]
  }
}

```
