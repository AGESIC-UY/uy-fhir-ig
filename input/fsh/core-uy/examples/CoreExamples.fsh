Instance: EjemploPacienteUY
InstanceOf: UYPatient
Title: "Paciente CORE UY con identificador institucional"
Description: "Ejemplo sintético nacional: namespace institucional ajeno al catálogo restringido HCEN."
* identifier[mrn].system = "https://example.org/institucion/identificadores/pacientes"
* identifier[mrn].value = "PACIENTE-SINTETICO-001"
* identifier[fni].system = "urn:oid:2.16.858.1.032.68909"
* identifier[fni].value = "ARG-EJEMPLO-001"
* name.family = "Ejemplo Prueba"
* name.family.extension[primerApellido].valueString = "Ejemplo"
* name.family.extension[segundoApellido].valueString = "Prueba"
* name.given = "Persona"
* language = #es
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml" lang="es"><p><b>Persona Ejemplo Prueba</b></p><p>Identificador institucional: PACIENTE-SINTETICO-001. Sistema emisor: https://example.org/institucion/identificadores/pacientes.</p><p>Identificador nacional extranjero de ejemplo: ARG-EJEMPLO-001. Sistema emisor: urn:oid:2.16.858.1.032.68909.</p><p>Nombre de pila: Persona. Primer apellido: Ejemplo. Segundo apellido: Prueba.</p></div>
"""

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
