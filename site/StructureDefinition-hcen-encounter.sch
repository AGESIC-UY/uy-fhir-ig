<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Encounter
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:implicitRules) &lt;= 0">implicitRules: maximum cardinality of 'implicitRules' is 0</sch:assert>
      <sch:assert test="count(f:language) &gt;= 1">language: minimum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:classHistory) &lt;= 0">classHistory: maximum cardinality of 'classHistory' is 0</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:priority) &lt;= 0">priority: maximum cardinality of 'priority' is 0</sch:assert>
      <sch:assert test="count(f:episodeOfCare) &lt;= 0">episodeOfCare: maximum cardinality of 'episodeOfCare' is 0</sch:assert>
      <sch:assert test="count(f:basedOn) &lt;= 0">basedOn: maximum cardinality of 'basedOn' is 0</sch:assert>
      <sch:assert test="count(f:appointment) &lt;= 0">appointment: maximum cardinality of 'appointment' is 0</sch:assert>
      <sch:assert test="count(f:length) &lt;= 0">length: maximum cardinality of 'length' is 0</sch:assert>
      <sch:assert test="count(f:reasonCode) &lt;= 0">reasonCode: maximum cardinality of 'reasonCode' is 0</sch:assert>
      <sch:assert test="count(f:reasonReference) &lt;= 0">reasonReference: maximum cardinality of 'reasonReference' is 0</sch:assert>
      <sch:assert test="count(f:diagnosis) &lt;= 0">diagnosis: maximum cardinality of 'diagnosis' is 0</sch:assert>
      <sch:assert test="count(f:account) &lt;= 0">account: maximum cardinality of 'account' is 0</sch:assert>
      <sch:assert test="count(f:hospitalization) &lt;= 0">hospitalization: maximum cardinality of 'hospitalization' is 0</sch:assert>
      <sch:assert test="count(f:location) &lt;= 0">location: maximum cardinality of 'location' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:type</sch:title>
    <sch:rule context="f:Encounter/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:type/f:coding</sch:title>
    <sch:rule context="f:Encounter/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:serviceType</sch:title>
    <sch:rule context="f:Encounter/f:serviceType">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:serviceType/f:coding</sch:title>
    <sch:rule context="f:Encounter/f:serviceType/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:participant/f:period</sch:title>
    <sch:rule context="f:Encounter/f:participant/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:period</sch:title>
    <sch:rule context="f:Encounter/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
