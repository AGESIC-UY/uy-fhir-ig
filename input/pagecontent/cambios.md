## 0.2.0 - 28/10/2026

Esta versión actualiza la identificación de personas y organizaciones, los datos del paciente y la publicación de documentos. Se mantiene FHIR R4 (`4.0.1`), el paquete `fhir.uy`, la base canónica y el estado de borrador.

### Traducciones de la guía

- Se agregan traducciones a la mayoría de los elementos de la guía y se eliminan las traducciones dentro de los recursos, así se puede tener una vista diferencial más limpia.

### Identificación de personas y organizaciones

- Se sustituye `UYCIIdentifier` del Core por [UYDNIIdentifier](StructureDefinition-uy-dni-identifier.html). El DNI utiliza el dominio `urn:oid:2.16.858.1.[CodPais].68909`, con el código numérico del país sin ceros iniciales. La nueva invariante `uy-dni-oid-country` comprueba su formato, no la asignación del código de país.
- `UYPatient` y `UYPractitioner` utilizan el slice `identifier[dni]` en lugar del anterior `identifier[ci]` del Core. El DNI sigue siendo opcional: repetible en pacientes y con un máximo de uno en profesionales. Ambos perfiles pasan a discriminar los identificadores por perfil, con slicing abierto. Las implementaciones deben distinguirlos por su contenido y no únicamente por `type` o `system`.
- Se incorpora [HCENCIIdentifier](StructureDefinition-hcen-ci-identifier.html) para la CI uruguaya específica de HCEN, con `system = urn:oid:2.16.858.2.10000675.68909`. `HCENPatient` conserva la CI opcional y Must Support (`0..1 MS`), `HCENPractitioner` la exige (`1..1`). El DNI heredado y la CI HCEN pueden coexistir, pero no se sustituyen entre sí.
- Se incorpora [HCENOrgIdentifier](StructureDefinition-hcen-org-identifier.html), utilizado por `HCENOrganization.identifier[organizationId]` y por `HCENSubmissionSet.extension[sourceId].valueIdentifier`. Exige `system = urn:ietf:rfc:3986` y el OID completo en `value`, bajo las ramas `2.16.858.0.0`, `.0.1` o `.0.2`. La nueva invariante `hcen-org-oid` verifica la sintaxis, sin acreditar la asignación o autorización institucional.
- Cuando se informa `assigner`, los identificadores HCEN de MRN, CI y organización referencian `HCENOrganization`. En particular, `HCENMRNIdentifier.assigner` se restringe desde `UYOrganization` al perfil HCEN.

### Datos del paciente

- Se incorporan las extensiones locales [Identidad de género](StructureDefinition-ext-identidad-de-genero.html), [Pronombres](StructureDefinition-ext-pronombres.html) y [Sexo al nacer](StructureDefinition-ext-sexo-al-nacer.html), derivadas de las extensiones HL7 correspondientes. `UYPatient` utiliza estas canónicas locales en los slices `identidadDeGenero`, `pronombres` y `sexoAlNacer`, en lugar de las referencias directas anteriores a HL7.
- Pronombres y sexo al nacer incorporan los conjuntos [VSPronombresUY](ValueSet-vs-pronombres-uy.html) y [VSSexoBiologico](ValueSet-vs-sexo-biologico.html), con vinculación `extensible`. La extensión de sexo al nacer exige el componente `type` y el patrón LOINC `76689-9` («Sex assigned at birth»). `HCENPatient` conserva `sexoAlNacer` como `0..1 MS`.

### Consulta No Urgente y mapeos CDA

- [HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.html) exige `encounter 1..1`, anteriormente era opcional con Must Support. Se retira la marca MS de ese elemento y de `text` en las ocho secciones clínicas perfiladas.
- [HCENEncounter](StructureDefinition-hcen-encounter.html) exige al menos un participante, con `participant.period` y `participant.period.start` obligatorios. Las instancias deben aportar la fecha y hora de participación que el mapeo utiliza para la firma del profesional en CDA.
- Se agregan mapeos CDA para `HCENPractitioner`, `HCENPractitionerRole` y `HCENOrganization`, incluidos los identificadores y la organización representada. Se incorpora el mapeo de `HCENServiceRequest.patientInstruction`.
- Se retira el mapeo de `category.coding.display` a `@displayName` en `HCENDiagnostico` y `HCENMotivoConsulta`, y el de `HCENDiagnostico.onsetPeriod.end` a `effectiveTime/high`.

### Metadatos y publicación

- [HomeCommunityId](StructureDefinition-ext-home-community-id.html) fija el valor `urn:oid:2.16.858.2.10000675.73183.1` para `home-community`.
- [HCENSubmissionSet](StructureDefinition-hcen-submission-set.html) vincula `designationType.valueCodeableConcept` al conjunto del tipo detallado de documento (EJE 2), con fuerza `extensible`. Se documentan sus mapeos XDS para `contentTypeCode` y `sourceId`.
- En [HCENProvideDocumentBundle](StructureDefinition-hcen-provide-document-bundle.html), las invariantes `hcen-publication-fhir-links` y `hcen-publication-document-identifier` vinculan cada DocumentReference con su Bundle document por el par `system` y `value` del identificador. Ya no exigen que la URL original del documento coincida con el `fullUrl` de la entrada. Se mantiene la correspondencia uno a uno, se rechazan identificadores duplicados y documentos huérfanos, y las URL FHIR deben ser distintas dentro del envío.

<!-- HCEN-POC: inicio -->
<div class="hcen-poc" style="border:2px solid #b42318;border-left-width:6px;background:#fff4f2;padding:1em;margin:1em 0;">
  <p><strong>PoC — Diferencia con Plataforma</strong></p>
  <p>Durante la preparación de la versión 0.2.0 se incorporó y luego se eliminó la invariante <code>hcen-document-retrieval-url</code> que prohibía las referencias internas <code>urn:uuid:</code> en <code>attachment.url</code> y en la <code>extension:binary</code> de DocumentReference. Plataforma debe exigir esta invariante, pero el Gateway no, por eso se eliminó.</p>
</div>
<!-- HCEN-POC: fin -->

### Ejemplos y documentación del intercambio

- Los cuatro ejemplos básicos del Core se sustituyen por instancias con nombres e identificadores propios de cada escenario. Se agregan tres ejemplos completos. Las referencias a los antiguos `EjemploPacienteUY`, `EjemploProfesionalUY`, `EjemploOrganizacionUY` y `EjemploRolProfesionalUY` deben actualizarse a los ejemplos publicados en esta versión.
- Se incorporan veintiún ejemplos HCEN: pacientes con CI, sin CI y con DNI y CI, profesionales y organizaciones, recursos clínicos y CDA de traumatología, y los Bundles documental y de publicación de medicina general. Los dos escenarios clínicos son independientes.
- Las cuatro transacciones se presentan como HCEN ITI-104, HCEN ITI-65, HCEN ITI-67 y HCEN ITI-68, con secciones comunes de actores, solicitud, procesamiento, respuesta y errores. Se precisan la actualización por MRN, la creación del paciente desde la publicación, el rechazo completo del envío, la consulta mediante POST y la selección de representación mediante `Accept`.


## 0.1.1 - 09/10/26

Actualización de correcciones para validación. Se mantiene FHIR R4 (`4.0.1`) y el estado de borrador.

- Se corrige la cardinalidad de `section` en [HCENConsultaNoUrgente](StructureDefinition-uy-consulta-no-urgente.html), de `2..8` a `2..*`.
- Se actualizan los indicadores de versión y la documentación de descargas, ejemplos y conformidad.

## 0.1.0 - 06/10/26

Versión inicial de la Guía de Implementación.
