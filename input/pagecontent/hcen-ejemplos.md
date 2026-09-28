Los ejemplos conectan las cuatro funciones HCEN mediante una persona, un prestador y un documento ficticios. Se prepararon para revisión; no se presentan como instancias validadas por IG Publisher ni como pruebas terminológicas o de acreditación. El documento ilustrativo no declara conformidad con la [Hoja de Consulta No Urgente](hcen-documentos-clinicos.html); esta versión todavía no incluye una instancia CNU completa.

### Preparar al paciente y el contexto

El [paciente](Patient-hcen-paciente-ejemplo.html) tiene el MRN `MRN-EJEMPLO-001` en un dominio ficticio. El [profesional](Practitioner-hcen-profesional-ejemplo.html), la [organización](Organization-hcen-organizacion-ejemplo.html) y su [rol](PractitionerRole-hcen-rol-ejemplo.html) completan el contexto del documento. La organización utiliza un OID real del catálogo solamente para validar HCENAAIdentifier; esto no acredita un intercambio operativo. Las referencias URN de estos recursos se resuelven dentro de los Bundles del ejemplo, no consultando un servidor.

El cuerpo Patient puede utilizarse para ilustrar la [actualización condicional](hcen-iti-104.html). Todos los datos personales son ficticios y los OID del prestador no se declaran autorizados.

### Publicar el documento

El [sobre de publicación](Bundle-hcen-publicacion-ejemplo.html) contiene ocho entradas: SubmissionSet, DocumentReference, documento FHIR, Binary CDA, Patient, Practitioner, PractitionerRole y Organization. Sus `fullUrl` permiten resolver las referencias sin descargar recursos externos.

El [documento FHIR](Bundle-hcen-documento-ejemplo.html) incluye una [Composition ilustrativa](Composition-hcen-composicion-ejemplo.html) y su contexto. El [Binary](Binary-hcen-cda-ejemplo.html) contiene un CDA de prueba con cuerpo textual, codificado en base64. Ambos describen un documento de prueba sin observaciones clínicas. El XML CDA no se presenta como validado contra un esquema o perfil clínico.

Los [metadatos](DocumentReference-hcen-referencia-ejemplo.html) relacionan las representaciones y el [SubmissionSet](List-hcen-conjunto-ejemplo.html) agrupa la referencia. Los identificadores documentales y entryUUID se detallan en [Identificadores HCEN](hcen-identificadores.html).

El resultado esperado de la revisión es comprobar estructura, referencias y correspondencias. No se incluye una respuesta exitosa de publicación que presuponga creación persistente de Bundle o Binary en Plataforma: ese contrato está [pendiente](hcen-iti-65.html#pendientes). La equivalencia de versión entre CDA y FHIR también requiere un mapeo definitivo y no queda acreditada por el ejemplo.

### Consultar y recuperar

La [consulta con una coincidencia](Bundle-hcen-consulta-ejemplo.html) incluye una copia de los metadatos con contexto contenido y URLs `example.org` ilustrativas para recuperación. La [consulta vacía](Bundle-hcen-consulta-vacia.html) muestra `total = 0`, sin entradas.

Para ilustrar la recuperación, el resultado FHIR corresponde al documento Bundle y el resultado CDA al Binary enlazados arriba. La URL selecciona la representación; `Accept` elige la serialización. Las URN del sobre solo identifican entradas locales y no son endpoints de recuperación. Su transformación en referencias recuperables forma parte del contrato de publicación pendiente.

### Situaciones de error

| Situación | Ejemplo |
| --- | --- |
| El MRN identifica varios pacientes | [Coincidencia múltiple](OperationOutcome-iti104-error-coincidencia-multiple.html) |
| El documento ya fue registrado | [Duplicado](OperationOutcome-iti65-error-duplicado.html) |
| Parámetro de consulta no admitido | [Parámetro no soportado](OperationOutcome-iti67-error-parametro.html) |
| No existe la representación | [Documento no encontrado](OperationOutcome-iti68-error-no-encontrado.html) |
| Serialización no soportada | [Formato no admitido](OperationOutcome-iti68-error-formato.html) |

Estos OperationOutcome ilustran la información de diagnóstico. No sustituyen los contratos HTTP de las [transacciones](hcen-transacciones.html) ni constituyen un catálogo local definitivo.
