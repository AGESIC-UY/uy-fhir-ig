Instance: EjemploPacienteUY
InstanceOf: UYPatient
Title: "Paciente Uruguayo (CORE UY)"
Description: "Ejemplo de un paciente genérico en Uruguay"
* language = #es
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml" lang="es"><p><b>Paciente Ejemplo</b></p><p>Nombre de pila: Juan Carlos. Apellido: Pérez Rodríguez.</p><p>Sexo asignado al nacer: Masculino.</p><p>Sexo administrativo: Masculino.</p><p>Fecha de nacimiento: 1980-01-01.</p><p>Teléfono móvil: +598 99 123 456. Correo electrónico: juan.perez@example.com</p></div>"""

* extension[recordedSexOrGender].extension[value].url = "value"
* extension[recordedSexOrGender].extension[value].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/administrative-gender"
* extension[recordedSexOrGender].extension[value].valueCodeableConcept.coding[0].code = #male
* extension[recordedSexOrGender].extension[value].valueCodeableConcept.coding[0].display = "Male"
* extension[recordedSexOrGender].extension[type].url = "type"
* extension[recordedSexOrGender].extension[type].valueCodeableConcept.coding[0].system = "http://loinc.org"
* extension[recordedSexOrGender].extension[type].valueCodeableConcept.coding[0].code = #76689-9
* extension[recordedSexOrGender].extension[type].valueCodeableConcept.coding[0].display = "Sex Assigned At Birth"
* identifier[mrn].system = "https://example.org/institucion/identificadores/pacientes"
* identifier[mrn].value = "MRN1234"
* identifier[ci].system = "urn:oid:2.16.858.2.10000675.68909"
* identifier[ci].value = "1234567-8"
* name.family = "Pérez Rodríguez"
* name.family.extension[primerApellido].valueString = "Pérez"
* name.family.extension[segundoApellido].valueString = "Rodríguez"
* name.given[0] = "Juan"
* name.given[1] = "Carlos"
* telecom[phone].use = #mobile
* telecom[phone].value = "+598 99 123 456"
* telecom[email].use = #home
* telecom[email].value = "juan.perez@example.com"
* gender = #male
* birthDate = "1980-01-01"
* address[uyAddress].line[0] = "Calle Falsa 1234"
* address[uyAddress].city = "MONTEVIDEO"
* address[uyAddress].state = "Montevideo"

Instance: EjemploProfesionalUY
InstanceOf: UYPractitioner
Title: "Profesional CORE UY sin cédula informada"
Description: "Ejemplo sintético que muestra que la CI obligatoria pertenece al perfil HCEN."
* name.family = "Ejemplo"
* name.given = "Profesional"
* language = #es
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml" lang="es"><p><b>Profesional Ejemplo</b></p><p>Nombre de pila: Profesional. Apellido: Ejemplo.</p></div>
"""

Instance: EjemploOrganizacionUY
InstanceOf: UYOrganization
Title: "Organización CORE UY sin identificador HCEN"
Description: "Ejemplo sintético de organización nacional identificada por su nombre."
* name = "Organización de ejemplo CORE UY"
* language = #es
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml" lang="es"><p><b>Organización de ejemplo CORE UY</b></p></div>
"""

Instance: EjemploRolProfesionalUY
InstanceOf: UYPractitionerRole
Title: "Rol profesional CORE UY"
Description: "Ejemplo sintético de rol que referencia los perfiles nacionales."
* practitioner = Reference(EjemploProfesionalUY)
* organization = Reference(EjemploOrganizacionUY)
* language = #es
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml" lang="es"><p>Rol del profesional <a href="Practitioner-EjemploProfesionalUY.html">Profesional Ejemplo</a> en la <a href="Organization-EjemploOrganizacionUY.html">Organización de ejemplo CORE UY</a>.</p></div>
"""
