Invariant: uy-dni-oid-country
Description: "El system debe tener el formato urn:oid:2.16.858.1.[ID país].68909, donde [ID país] es el código numérico de país definido por ISO 3166-1, representado como un arco entero de hasta tres dígitos, sin ceros iniciales. La invariante valida el formato, no la asignación vigente del código de país ni la autorización del emisor."
Expression: "matches('^urn:oid:2[.]16[.]858[.]1[.](0|[1-9][0-9]{0,2})[.]68909$')"
Severity: #error
