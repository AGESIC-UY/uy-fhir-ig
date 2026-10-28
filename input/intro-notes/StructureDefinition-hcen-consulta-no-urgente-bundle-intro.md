Este Bundle de tipo `document` representa la Hoja de Consulta No Urgente y sus recursos clínicos.

La primera entrada contiene la única Composition del documento, perfilada como [HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.html).

El identificador del Bundle coincide en `system` y `value` con el de la Composition y con el `masterIdentifier` de su DocumentReference. El documento debe resolver sus referencias clínicas con sus propios recursos, independientemente del contexto incluido en el envío de publicación.

Es la representación del documento clínico como tal. Es distinto del [Bundle de publicación](StructureDefinition-hcen-provide-document-bundle.html), que incorpora además los metadatos del intercambio.