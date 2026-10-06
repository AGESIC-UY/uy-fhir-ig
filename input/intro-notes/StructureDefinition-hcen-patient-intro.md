### Datos conocidos y registro del paciente

Este perfil toma PIXm Patient como referencia de diseño, sin declarar conformidad con el estándar PIXm. Los mismos mínimos se aplican al registro de pacientes y al contexto de publicación documental.

El MRN es obligatorio; nombre, sexo administrativo y nacimiento conservan la cardinalidad opcional y se envían cuando se conocen según MS. Esto permite registrar un paciente y su evento clínico en una emergencia aunque todavía no se disponga de esos datos. No informar un dato desconocido no autoriza omitir el MRN ni enviar elementos vacíos.

### Sexo o género

`recordedSexOrGender` no significa por sí sola sexo asignado al nacer. Si se usa con ese propósito, el contenido debe identificar el tipo de registro. No se agrega un código fijo no acordado. La cardinalidad heredada de `genderIdentity` se conserva sin agregar MS.

El mapeo de identificadores, nombres y sexo administrativo desde INUS se explica en [Registrar o actualizar pacientes](hcen-iti-104.html#mapeo-inus).
