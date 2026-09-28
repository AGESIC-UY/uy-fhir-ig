# Rol profesional CORE UY - Guía de Implementación FHIR de Uruguay v0.1.0

## Ejemplo PractitionerRole: Rol profesional CORE UY

Rol del profesional [Profesional Ejemplo](Practitioner-EjemploProfesionalUY.md) en la [Organización de ejemplo CORE UY](Organization-EjemploOrganizacionUY.md).



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "EjemploRolProfesionalUY",
  "meta" : {
    "profile" : ["http://fhir.hcen.gub.uy/StructureDefinition/uy-practitioner-role"]
  },
  "language" : "es",
  "practitioner" : {
    "reference" : "Practitioner/EjemploProfesionalUY"
  },
  "organization" : {
    "reference" : "Organization/EjemploOrganizacionUY"
  }
}

```
