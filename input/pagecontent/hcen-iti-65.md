Esta transacción publica los metadatos que permiten descubrir y recuperar documentos clínicos. El prestador envía un [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html) y conserva las representaciones FHIR y CDA en su repositorio.

Plataforma valida el envío y registra los metadatos según el [modelo de intercambio HCEN](hcen.html). El prestador conserva los documentos para su recuperación posterior.

### Actores y precondiciones

El prestador conserva las representaciones del documento y envía sus recursos de publicación. Plataforma recibe el envío, valida los recursos FHIR y registra los metadatos.

El paciente debería (SHOULD) registrarse previamente mediante [HCEN ITI-104](hcen-iti-104.html). Este registro previo no es obligatorio: la publicación permite crear al paciente cuando todavía no existe.

<figure>
  <img src="hcen-cu-publicar-documentos.svg" alt="El prestador conserva FHIR y CDA y envía los recursos FHIR de publicación. Plataforma valida el envío y registra los metadatos o devuelve un error." style="width:100%;max-width:760px;height:auto;"/>
  <figcaption>El prestador conserva los documentos. Plataforma valida el envío FHIR y registra sus metadatos.</figcaption>
</figure>

### Solicitud

```http
POST [base-publicacion] HTTP/1.1
Content-Type: application/fhir+json
Accept: application/fhir+json

{ recurso HCENProvideDocumentBundle }
```

Se utiliza `Bundle.type = transaction` y las entradas POST del perfil. Las entradas POST representan acciones de publicación, sin crear recursos FHIR persistentes recuperables individualmente en Plataforma.

El perfil [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html) define las entradas, las referencias de contexto y la correspondencia entre metadatos y documentos. El envío debe incluir todos los recursos FHIR necesarios para su validación.

<a id="representaciones"></a>
#### Representaciones y ubicaciones

El prestador debe (SHALL) conservar ambas representaciones: un Bundle documental FHIR, cuya primera entrada sea Composition, y un CDA XML. El Bundle documental debe incluirse en el envío. La extensión `binary` referencia un [HCENCdaBinary](StructureDefinition-hcen-cda-binary.html). Se admiten CDA de nivel 1 o 3. Un PDF debe estar embebido en CDA nivel 1.

El Binary CDA no debería (SHOULD NOT) enviarse a Plataforma. Si se incluye, su presencia no invalida por sí misma el envío y su contenido puede ignorarse. La referencia al CDA permanece obligatoria.

El envío debe (SHALL) informar las ubicaciones HTTP(S) en el servidor del prestador para el Bundle FHIR y el Binary CDA, según [HCENDocumentReference](StructureDefinition-hcen-document-reference.html#representaciones). Esto es fundamental para que Plataforma sepa luego a dónde ir a buscar los recursos cuando otros prestadores los soliciten. Estas ubicaciones (urls) son distintas del `fullUrl` de las entradas y de la URL de recuperación devuelta por HCEN ITI-67.

<!-- HCEN-POC: inicio -->
<div class="hcen-poc" style="border:2px solid #b42318;border-left-width:6px;background:#fff4f2;padding:1em;margin:1em 0;">
  <p><strong>PoC — Diferencia con Plataforma</strong></p>
  <p>El Gateway guarda el contenido localmente para que pueda recuperarse durante la prueba. Por eso exige incluir el Binary CDA en HCEN ITI-65 y vincularlo desde los metadatos del documento.</p>
  <p>En la variante PoC se utilizan referencias <code>urn:uuid:</code> a las entradas del envío para enlazar el Bundle documental y su Binary. La invariante que exigía HTTP(S) en esas ubicaciones está comentada temporalmente. Plataforma sigue necesitando las URL originales recuperables del prestador.</p>
</div>
<!-- HCEN-POC: fin -->

<a id="referencias-locales"></a>
Las [referencias de contexto](StructureDefinition-hcen-provide-document-bundle.html#referencias-locales) deben resolverse dentro del envío. Los recursos contenidos no sustituyen las entradas exigidas para ese contexto.

### Reglas de procesamiento

#### Identificación del paciente

La coincidencia se determina por dominio MRN y valor MRN. Si el paciente no existe, Plataforma lo crea a partir del Patient incluido. Si existe, lo utiliza sin actualizarlo.

#### Validación y atomicidad

Plataforma valida contra la IG los recursos FHIR enviados, incluido el documento clínico. Un incumplimiento impide aceptar la publicación. No inspecciona el contenido CDA ni comprueba su equivalencia con FHIR. Conservar ambas representaciones del mismo documento y versión es responsabilidad del prestador. Durante la publicación no se consultan recursos adicionales al prestador. La recuperación se realiza en HCEN ITI-68.

`DocumentReference.masterIdentifier` debe ser único respecto de los documentos ya registrados. Volver a enviar el mismo identificador produce un error, incluso si el envío es idéntico. No debe asignarse otro identificador al mismo documento para eludir este control.

El envío se procesa de forma atómica: si falla, se rechaza completo. No deben quedar documentos publicados parcialmente ni un paciente creado por una publicación que falló.

Esta transacción contempla la publicación de documentos nuevos. El procesamiento de reemplazos no forma parte del alcance de esta versión.

### Respuesta

<a id="contrato-respuesta"></a>

La respuesta exitosa es un Bundle `transaction-response`, con una respuesta por entrada del Bundle recibido, en el mismo orden. El Bundle documental anidado cuenta como una entrada, sin desglosar sus recursos clínicos. No se devuelve un `Location` real de recursos FHIR persistentes en Plataforma.

Cada entrada incluye `entry.response.status`, obligatorio en FHIR R4. Los valores concretos por entrada no se especifican en esta versión.

<!-- HCEN-POC: inicio -->
<div class="hcen-poc" style="border:2px solid #b42318;border-left-width:6px;background:#fff4f2;padding:1em;margin:1em 0;">
  <p><strong>PoC — Diferencia con Plataforma</strong></p>
  <p>El Gateway persiste recursos en HAPI y puede devolver ubicaciones reales locales en la respuesta. Esas ubicaciones pertenecen al simulador y no describen la respuesta de Plataforma.</p>
</div>
<!-- HCEN-POC: fin -->

### Errores

<a id="pendientes"></a>

Los incumplimientos de los perfiles y las reglas de publicación, incluidos los identificadores documentales duplicados, provocan el rechazo completo del envío. No se conservan documentos ni pacientes creados por una publicación fallida.

Esta versión no especifica el detalle de los códigos HTTP de error ni los valores de estado por entrada de la respuesta exitosa.
