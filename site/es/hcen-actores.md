# Actores y responsabilidades - Guía de Implementación FHIR de Uruguay v0.2.0

## Actores y responsabilidades

Esta página identifica a las partes que participan en la interacción con HCEN, y permite distribuir sus responsabilidades. Un actor representa una función del intercambio, no necesariamente una aplicación única.

### Prestador

El prestador es responsable de la integración completa de su despliegue. Puede distribuir las funciones entre varios productos, pero debe (SHALL) cubrir todas las funciones obligatorias de esta versión.

| | | |
| :--- | :--- | :--- |
| Fuente de identidad | Registrar y actualizar sus pacientes utilizando el MRN local. | [Registrar o actualizar pacientes](hcen-iti-104.md) |
| Publicador de documentos | Conservar FHIR y CDA en su repositorio y enviar los recursos de publicación a Plataforma. | [Publicar documentos](hcen-iti-65.md) |
| Consultante | Buscar metadatos y procesar las coincidencias. | [Consultar metadatos](hcen-iti-67.md) |
| Solicitante de documentos | Solicitar a Plataforma cualquiera de las dos representaciones. | [Recuperar documentos](hcen-iti-68.md) |
| Proveedor de documentos | Entregar documentos propios cuando Plataforma los solicite. | [Recuperar documentos](hcen-iti-68.md) |

El repositorio pertenece al ámbito del prestador, debe (SHALL) almacenar los documentos clínicos y entregarlos cuando sean requeridos. La obligación de mantener dos representaciones del mismo documento clínico se define en [Publicación](hcen-iti-65.md#representaciones).

### Plataforma

Plataforma es la contraparte implementada por Salud Digital. El prestador no debe implementar este actor para cumplir su integración.

Plataforma administra los registros de pacientes y la unificación de identidades, registra DocumentReference y SubmissionSet y responde consultas de metadatos. Recibe el documento FHIR para validación sin asumir su almacenamiento como documento. Para recuperar contenido, actúa de intermediaria entre el prestador solicitante y el repositorio del prestador que lo conserva.

Las reglas de validación y rechazo se describen en [Publicar documentos](hcen-iti-65.md).

### Distribución entre productos

La declaración de un producto debe (SHALL) identificar qué funciones cubre y su versión. La conformidad integral se evalúa sobre el despliegue del prestador, conforme a [Conformidad y capacidades](hcen-conformidad.md).

