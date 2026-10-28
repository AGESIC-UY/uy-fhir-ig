El rol vincula obligatoriamente un [HCENPractitioner](StructureDefinition-hcen-practitioner.html) mediante `practitioner` y una [HCENOrganization](StructureDefinition-hcen-organization.html) mediante `organization`.

`code`, `specialty` y `location` son Must Support y se informan cuando se conocen, conforme a las [reglas de HCEN](hcen-conformidad.html#must-support). En una publicación, el rol utilizado en la autoría y los recursos del profesional y de la organización deben formar parte del [Bundle de publicación](StructureDefinition-hcen-provide-document-bundle.html).
