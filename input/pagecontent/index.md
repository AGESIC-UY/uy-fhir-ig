<div class="uy-core-banner">
  <img src="uy-core-banner.svg"
       alt="FHIR Uruguay — Guía de Implementación FHIR de Uruguay. Base nacional Core y especificaciones de interoperabilidad con HCEN. Borrador."
       width="900" height="280"/>
</div>

### Introducción

Esta guía de implementación reúne las definiciones comunes para Uruguay y las reglas para intercambiar información con la Historia Clínica Electrónica Nacional (HCEN), sobre FHIR R4 (4.0.1).

Su propósito es ayudar a identificar qué perfil corresponde a cada dato, cómo representarlo y qué requisitos adicionales se aplican cuando ese dato participa en un intercambio con HCEN. Está dirigida a quienes diseñan, desarrollan o evalúan sistemas de salud. No se necesita experiencia previa con FHIR para comenzar el recorrido.

### Una guía, dos bloques

Al adaptar un recurso FHIR al contexto uruguayo surgen preguntas comunes a cualquier implementación:

¿Cómo represento el segundo apellido de una persona? ¿Qué códigos utilizo para representar la ciudad en una dirección? ¿Cómo modifico un perfil para que acepte distintos identificadores?

El bloque **Core Uruguay** reúne las pautas para responder a cada una de estas preguntas independientemente del intercambio en el que se pretendan utilizar los datos.  Define perfiles, identificadores, tipos de datos, extensiones y terminología que pueden reutilizarse en diferentes implementaciones. Sus definiciones abordan necesidades comunes del contexto uruguayo y no dependen de un caso de uso específico.

El bloque **Guía HCEN** parte de esas definiciones y se concentra en un caso de uso concreto: la interoperabilidad con la Plataforma HCEN. Incorpora perfiles, extensiones y terminología dentro de este contexto; define obligaciones para los actores y presenta las transacciones principales para hacer uso de la Plataforma HCEN "a través de FHIR".

<figure class="uy-scope-figure">
  <img src="core-hcen-enfoques.svg"
       alt="FHIR R4 aporta los recursos base. Core Uruguay define la representación nacional reutilizable. El recorrido principal continúa en la Guía HCEN, que especifica la interoperabilidad con la Plataforma HCEN. El Core también puede utilizarse en otros contextos de Uruguay."
       width="640" height="590"/>
  <figcaption>La Guía HCEN desarrolla el intercambio con la plataforma sobre la base común de Core Uruguay.</figcaption>
</figure>

### ¿Por dónde empezar?

| Si necesitás… | Punto de partida |
| --- | --- |
| Entender los términos de FHIR y cómo leer esta guía | [Cómo usar esta guía](alcance.html). |
| Representar pacientes, profesionales u organizaciones de manera general para el contexto uruguayo | [Core Uruguay](introduccion.html). |
| Implementar el intercambio con HCEN utilizando FHIR | [Introducción a HCEN](hcen.html). |
| Consultar directamente una definición técnica | [Índice de artefactos](artifacts.html). |

### Estado de la guía

La versión **0.1.0** es un **borrador de desarrollo**. Incluye un Core inicial y una primera versión HCEN con las cuatro transacciones principales documentadas. Algunos contratos operativos de HCEN siguen pendientes de definición.

También están disponibles las [descargas](descargas.html) y el [historial de cambios](cambios.html).
