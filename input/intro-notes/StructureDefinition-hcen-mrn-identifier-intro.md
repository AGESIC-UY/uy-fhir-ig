### Autoridad de asignación del identificador

El campo `system` identifica a la **Assigning Authority (AA)**, la autoridad o aplicación que genera el número de identificación local del paciente. Su OID utiliza la rama de objetos de UNAOID `2.16.858.2` y se expresa como una URI:

```text
urn:oid:2.16.858.2.[IdInstitución].72768.[ConsecutivoInterno]
```

El consecutivo interno lo administra la organización y permite distinguir sus aplicaciones cuando más de una genera identificadores de pacientes. Por ejemplo, `urn:oid:2.16.858.2.99999999.72768.1` representa una AA ficticia con consecutivo 1. El valor local del paciente se informa en `value`; el OID de la AA no sustituye ese número.

La invariante comprueba la estructura del OID. La autorización del dominio y su correspondencia con la institución emisora se verifican mediante lógica interna de Plataforma. El OID institucional de Organization no sustituye al dominio de asignación del MRN.

La guía pública no incluye el catálogo operativo de dominios MRN ni aplica un binding a ese catálogo. Los ejemplos utilizan dominios ficticios: una validación estructural satisfactoria no acredita su autorización para operar.
