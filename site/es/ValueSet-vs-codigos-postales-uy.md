# Códigos postales de Uruguay - Guía de Implementación FHIR de Uruguay v0.1.0

## ValueSet: Códigos postales de Uruguay 

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
  "id" : "vs-codigos-postales-uy",
  "url" : "http://fhir.hcen.gub.uy/ValueSet/vs-codigos-postales-uy",
  "version" : "0.1.0",
  "name" : "VSCodigosPostalesUY",
  "title" : "Códigos postales de Uruguay",
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
  "description" : "Códigos postales admitidos en Address.postalCode.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.hcen.gub.uy/CodeSystem/cs-codigos-postales-uy",
      "concept" : [{
        "code" : "11000",
        "display" : "11000"
      },
      {
        "code" : "11100",
        "display" : "11100"
      },
      {
        "code" : "11200",
        "display" : "11200"
      },
      {
        "code" : "11300",
        "display" : "11300"
      },
      {
        "code" : "11400",
        "display" : "11400"
      },
      {
        "code" : "11500",
        "display" : "11500"
      },
      {
        "code" : "11600",
        "display" : "11600"
      },
      {
        "code" : "11700",
        "display" : "11700"
      },
      {
        "code" : "11800",
        "display" : "11800"
      },
      {
        "code" : "11900",
        "display" : "11900"
      },
      {
        "code" : "12000",
        "display" : "12000"
      },
      {
        "code" : "12100",
        "display" : "12100"
      },
      {
        "code" : "12300",
        "display" : "12300"
      },
      {
        "code" : "12400",
        "display" : "12400"
      },
      {
        "code" : "12500",
        "display" : "12500"
      },
      {
        "code" : "12600",
        "display" : "12600"
      },
      {
        "code" : "12800",
        "display" : "12800"
      },
      {
        "code" : "12900",
        "display" : "12900"
      },
      {
        "code" : "13000",
        "display" : "13000"
      },
      {
        "code" : "15000",
        "display" : "15000"
      },
      {
        "code" : "15100",
        "display" : "15100"
      },
      {
        "code" : "15200",
        "display" : "15200"
      },
      {
        "code" : "15300",
        "display" : "15300"
      },
      {
        "code" : "15400",
        "display" : "15400"
      },
      {
        "code" : "15500",
        "display" : "15500"
      },
      {
        "code" : "15600",
        "display" : "15600"
      },
      {
        "code" : "15700",
        "display" : "15700"
      },
      {
        "code" : "15800",
        "display" : "15800"
      },
      {
        "code" : "15900",
        "display" : "15900"
      },
      {
        "code" : "20000",
        "display" : "20000"
      },
      {
        "code" : "20100",
        "display" : "20100"
      },
      {
        "code" : "20200",
        "display" : "20200"
      },
      {
        "code" : "20300",
        "display" : "20300"
      },
      {
        "code" : "20400",
        "display" : "20400"
      },
      {
        "code" : "20500",
        "display" : "20500"
      },
      {
        "code" : "27000",
        "display" : "27000"
      },
      {
        "code" : "27100",
        "display" : "27100"
      },
      {
        "code" : "27200",
        "display" : "27200"
      },
      {
        "code" : "27300",
        "display" : "27300"
      },
      {
        "code" : "27400",
        "display" : "27400"
      },
      {
        "code" : "30000",
        "display" : "30000"
      },
      {
        "code" : "30100",
        "display" : "30100"
      },
      {
        "code" : "30300",
        "display" : "30300"
      },
      {
        "code" : "31100",
        "display" : "31100"
      },
      {
        "code" : "33000",
        "display" : "33000"
      },
      {
        "code" : "34100",
        "display" : "34100"
      },
      {
        "code" : "34200",
        "display" : "34200"
      },
      {
        "code" : "35100",
        "display" : "35100"
      },
      {
        "code" : "35200",
        "display" : "35200"
      },
      {
        "code" : "35300",
        "display" : "35300"
      },
      {
        "code" : "36100",
        "display" : "36100"
      },
      {
        "code" : "36200",
        "display" : "36200"
      },
      {
        "code" : "37000",
        "display" : "37000"
      },
      {
        "code" : "37100",
        "display" : "37100"
      },
      {
        "code" : "40000",
        "display" : "40000"
      },
      {
        "code" : "40100",
        "display" : "40100"
      },
      {
        "code" : "40200",
        "display" : "40200"
      },
      {
        "code" : "41100",
        "display" : "41100"
      },
      {
        "code" : "41200",
        "display" : "41200"
      },
      {
        "code" : "45000",
        "display" : "45000"
      },
      {
        "code" : "45100",
        "display" : "45100"
      },
      {
        "code" : "45200",
        "display" : "45200"
      },
      {
        "code" : "50000",
        "display" : "50000"
      },
      {
        "code" : "50100",
        "display" : "50100"
      },
      {
        "code" : "50200",
        "display" : "50200"
      },
      {
        "code" : "55000",
        "display" : "55000"
      },
      {
        "code" : "55100",
        "display" : "55100"
      },
      {
        "code" : "60000",
        "display" : "60000"
      },
      {
        "code" : "60100",
        "display" : "60100"
      },
      {
        "code" : "60200",
        "display" : "60200"
      },
      {
        "code" : "60300",
        "display" : "60300"
      },
      {
        "code" : "65000",
        "display" : "65000"
      },
      {
        "code" : "65100",
        "display" : "65100"
      },
      {
        "code" : "70000",
        "display" : "70000"
      },
      {
        "code" : "70100",
        "display" : "70100"
      },
      {
        "code" : "70200",
        "display" : "70200"
      },
      {
        "code" : "70300",
        "display" : "70300"
      },
      {
        "code" : "70400",
        "display" : "70400"
      },
      {
        "code" : "70500",
        "display" : "70500"
      },
      {
        "code" : "70600",
        "display" : "70600"
      },
      {
        "code" : "70700",
        "display" : "70700"
      },
      {
        "code" : "70800",
        "display" : "70800"
      },
      {
        "code" : "75000",
        "display" : "75000"
      },
      {
        "code" : "75100",
        "display" : "75100"
      },
      {
        "code" : "75200",
        "display" : "75200"
      },
      {
        "code" : "75300",
        "display" : "75300"
      },
      {
        "code" : "75400",
        "display" : "75400"
      },
      {
        "code" : "75500",
        "display" : "75500"
      },
      {
        "code" : "80000",
        "display" : "80000"
      },
      {
        "code" : "80100",
        "display" : "80100"
      },
      {
        "code" : "80200",
        "display" : "80200"
      },
      {
        "code" : "80300",
        "display" : "80300"
      },
      {
        "code" : "80400",
        "display" : "80400"
      },
      {
        "code" : "80500",
        "display" : "80500"
      },
      {
        "code" : "85000",
        "display" : "85000"
      },
      {
        "code" : "90000",
        "display" : "90000"
      },
      {
        "code" : "90100",
        "display" : "90100"
      },
      {
        "code" : "90200",
        "display" : "90200"
      },
      {
        "code" : "91100",
        "display" : "91100"
      },
      {
        "code" : "91200",
        "display" : "91200"
      },
      {
        "code" : "91300",
        "display" : "91300"
      },
      {
        "code" : "91400",
        "display" : "91400"
      },
      {
        "code" : "91500",
        "display" : "91500"
      },
      {
        "code" : "91600",
        "display" : "91600"
      },
      {
        "code" : "91700",
        "display" : "91700"
      },
      {
        "code" : "91800",
        "display" : "91800"
      },
      {
        "code" : "94000",
        "display" : "94000"
      },
      {
        "code" : "94100",
        "display" : "94100"
      },
      {
        "code" : "95100",
        "display" : "95100"
      },
      {
        "code" : "95200",
        "display" : "95200"
      },
      {
        "code" : "95300",
        "display" : "95300"
      },
      {
        "code" : "95400",
        "display" : "95400"
      },
      {
        "code" : "95500",
        "display" : "95500"
      },
      {
        "code" : "95600",
        "display" : "95600"
      },
      {
        "code" : "96100",
        "display" : "96100"
      },
      {
        "code" : "96200",
        "display" : "96200"
      },
      {
        "code" : "96300",
        "display" : "96300"
      },
      {
        "code" : "96400",
        "display" : "96400"
      },
      {
        "code" : "96500",
        "display" : "96500"
      },
      {
        "code" : "97000",
        "display" : "97000"
      },
      {
        "code" : "98000",
        "display" : "98000"
      }]
    }]
  }
}

```
