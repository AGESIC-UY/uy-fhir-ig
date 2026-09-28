### Identificadores y representaciones

masterIdentifier conserva el OID de la versión documental. identifier[entryUUID] contiene el identificador técnico opcional con formato `urn:uuid:1.[oid_documento_clinico]` y utiliza HCENDocumentReferenceIdentifier, derivado de IHE MHD EntryUUID Identifier.

attachment.url refiere al documento FHIR y la extensión binary a su CDA. Los campos de formato, tamaño y hash describen la representación FHIR. Ver [Identificadores HCEN](hcen-identificadores.html) y [Publicación](hcen-iti-65.html).

El perfil de metadatos admite relaciones históricas; el sobre de alta excluye replaces. La pertenencia de referencias históricas al envío no se valida mediante expansión recursiva de todos los documentos.
