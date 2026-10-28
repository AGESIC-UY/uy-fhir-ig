El profesional se identifica mediante la CI HCEN obligatoria (`identifier[ci]`, `1..1`), con [HCENCIIdentifier](StructureDefinition-hcen-ci-identifier.html), y debe incluir al menos un nombre. El DNI nacional heredado es opcional y no sustituye la CI HCEN. No se admite `photo`.

La participación del profesional en una organización se expresa mediante [HCENPractitionerRole](StructureDefinition-hcen-practitioner-role.html). Este rol se utiliza en la autoría documental. Las convenciones compartidas de los identificadores se explican en [Identificadores HCEN](hcen-identificadores.html).

Las extensiones de [certificación](StructureDefinition-ext-practitioner-certification.html) y [notificación obligatoria](StructureDefinition-ext-practitioner-eno.html) se mantienen definidas, pero no se incorporan a este perfil ni a otro hasta que se acuerde cómo representar su contexto documental.

Los apellidos y las extensiones comunes de personas se consultan en el [Core](extensiones.html).
