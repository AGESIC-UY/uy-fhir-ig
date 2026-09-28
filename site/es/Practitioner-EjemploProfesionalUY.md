# Profesional CORE UY sin cédula informada - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo Practitioner: Profesional CORE UY sin cédula informada

**Profesional Ejemplo**

Nombre de pila: Profesional. Apellido: Ejemplo.



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "EjemploProfesionalUY",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner"]
  },
  "language" : "es",
  "name" : [{
    "family" : "Ejemplo",
    "given" : ["Profesional"]
  }]
}

```
