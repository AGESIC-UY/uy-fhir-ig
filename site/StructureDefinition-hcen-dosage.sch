<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Dosage
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Dosage</sch:title>
    <sch:rule context="f:Dosage">
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:additionalInstruction) &lt;= 0">additionalInstruction: maximum cardinality of 'additionalInstruction' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 0">method: maximum cardinality of 'method' is 0</sch:assert>
      <sch:assert test="count(f:maxDosePerPeriod) &lt;= 0">maxDosePerPeriod: maximum cardinality of 'maxDosePerPeriod' is 0</sch:assert>
      <sch:assert test="count(f:maxDosePerAdministration) &lt;= 0">maxDosePerAdministration: maximum cardinality of 'maxDosePerAdministration' is 0</sch:assert>
      <sch:assert test="count(f:maxDosePerLifetime) &lt;= 0">maxDosePerLifetime: maximum cardinality of 'maxDosePerLifetime' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Dosage/f:doseAndRate</sch:title>
    <sch:rule context="f:Dosage/f:doseAndRate">
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
