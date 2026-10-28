# example-hcen-binario-cda-consulta-no-urgente - Guía de Implementación FHIR de Uruguay v0.2.0

## Ejemplo Binary: example-hcen-binario-cda-consulta-no-urgente

```

<?xml version="1.0" encoding="UTF-8"?>
<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:voc="urn:hl7-org:v3/voc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 CDA.xsd">
    <typeId root="2.16.840.1.113883.1.3" extension="POCD_HD000040"/>
    
    <!-- OID de la plantilla de documento de consulta no urgente-->
    <templateId root="2.16.858.2.10000675.72591.1.101.1"/>

    <!-- Identificador único del documento. El root sigue el formato 2.16.858.2.[IdOrganización].[67430].AAAAMMDDHHMMSS.[ConsecutivoInterno].[Aplicación] -->
    <id root="2.16.858.2.1.67430.20190823110524.1.1"/>

    <!-- Tipo de documento (Eje 1) -->
    <code xsi:type="CV" code="34108-1" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"
        displayName="Hoja de consulta no urgente"/>

    <!-- Título del documento -->
    <title xsi:type="ST">Consulta no urgente</title>

    <!-- Fecha de creación del documento -->
    <effectiveTime value="20190823110524-0300"/>

    <!-- Nivel de protección o confidencialidad del documento -->
    <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25"/>

    <!-- Idioma principal del documento -->
    <languageCode code="es-UY"/>

    <!-- Identificador común sobre todas las revisiones de un documento  -->
    <setId root="2.16.858.2.1.67430.20190823110524.1.1"/>
    
    <!-- Número de versión del documento -->
    <versionNumber value="1"/>
    
    <!-- Datos demográficos básicos del usuario/paciente -->
    <recordTarget typeCode="RCT" contextControlCode="OP">

        <patientRole classCode="PAT">

            <!-- Identificador del paciente -->
            <id root="2.16.858.2.999999.72768.1" extension="1873455"/>
            <id root="2.16.858.2.10000675.68909" extension="45000001"/>

            <!-- Datos del paciente y del cuidador principal -->
            <patient>

                <!-- Nombre  del paciente-->
                <name>
                    <family>González</family>
                    <family>Pereira</family>
                    <given>María</given><given>Laura</given>
                </name>

                <!-- Género -->
                <administrativeGenderCode code="2" displayName="Femenino"
                    codeSystem="2.16.858.2.10000675.69600"/>

                <!-- Fecha de nacimiento -->
                <birthTime value="19870314"/>

            </patient>
          </patientRole>
    </recordTarget>

    <!-- Autor del documento -->
    <author>
        
        <!--Tiempo en que el autor comienza su participación en el documento -->
        <time value="20190823100524-0300"/>
        
        <assignedAuthor classCode="ASSIGNED">
            
            <id root="2.16.858.2.10000675.68909" extension="87600000"/>
            <code code="394801008" codeSystem="2.16.840.1.113883.6.96"
                codeSystemName="SNOMED CT" displayName="traumatología y ortopedia"/>

            <assignedPerson>
                <name>
                    <family>Sousa</family>
                    <given>Guillermo</given>
                </name>
            </assignedPerson>
            
			<representedOrganization>
                <id root="2.16.858.0.0.2.1"/>
                <name>ASSE</name>
			</representedOrganization>

        </assignedAuthor>
      </author>

    <!-- Organización a cargo de la conservación del documento -->
    <custodian>
        <assignedCustodian>
            <representedCustodianOrganization>
                <id root="2.16.858.0.0.2.1"/>
                <!-- Identificador de la Organización definido por la UNAOID-->
                <name>ASSE</name>
            </representedCustodianOrganization>
        </assignedCustodian>
    </custodian>

    <!-- Otros datos del documento y del encuentro -->
    <componentOf>
        <encompassingEncounter classCode="ENC">
            
            <!-- Tipo de documento detallado (Eje 2)-->
            <code xsi:type="CV" code="6821000179104" codeSystem="2.16.840.1.113883.6.96"
                codeSystemName="SNOMED CT"
                displayName="Hoja de consulta no urgente centralizada - policlínica"/>
            
            <effectiveTime xsi:type="IVL_TS">
                <low value="20190823100524-0300"/>
                <high value="20190823101524-0300"/>
            </effectiveTime>
            
            <location typeCode="LOC">
                <healthCareFacility classCode="SDLOC">
                    
                    <!--Servicio o especialidad (Eje 3) -->
                    <code xsi:type="CV" code="4101000179107" codeSystem="2.16.840.1.113883.6.96"
                        codeSystemName="SNOMED CT" displayName="servicio de traumatología y ortopedia"/>
                    
                </healthCareFacility>
            </location>
        </encompassingEncounter>
    </componentOf>

    <!-- Datos del proceso asistencial -->
    <component typeCode="COMP" contextConductionInd="true">
        <structuredBody>

            <!-- Sección Motivo de la consulta -->
            <component>
                <section>
                    <templateId root="2.16.858.2.10000675.72591.2.20.1"/>
                    <code xsi:type="CV" code="10154-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Motivos de consulta"/>
                    <title>Motivos de consulta</title>
                    <text>Descripción del motivo de consulta: Mialgia</text>                    
                    
                    <!-- Cada uno de los motivos de consulta -->
                    <entry>
                        <observation classCode="OBS" moodCode="EVN">
                            <templateId root="2.16.858.2.10000675.72591.4.16.1"/>
                            <code xsi:type="CV" code="7611000179107"
                                codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"
                                displayName="Descripción del motivo de consulta"/>
                            <!-- Descripción del motivo -->
                            <value xsi:type="CV" code="68962001" codeSystem="2.16.840.1.113883.6.96"
                                codeSystemName="SNOMED CT" displayName="Mialgia"> </value>
                        </observation>
                    </entry>
                </section>
            </component>

            <!-- Sección Diagnósticos  -->
            <component>
                <section>
                    <templateId root="2.16.858.2.10000675.72591.2.14.1"/>
                    <code xsi:type="CV" code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnósticos"/>
                    <title>Diagnósticos</title>
                        <text>
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Descripción del diagnóstico</td>
                                        <td>Desgarro muscular</td>
                                    </tr>
                                    <tr>
                                        <td>Fecha de inicio</td>
                                        <td>22/08/2016</td>
                                    </tr>
                                    <tr>
                                        <td>Estado del problema</td>
                                        <td>Problema no resuelto</td>
                                    </tr>
                                    <tr>
                                        <td>Grado de certeza</td>
                                        <td>Confirmado</td>
                                    </tr>
                                </tbody>                                 
                            </table>                       
                         </text>
                    <!-- Cada uno de los problemas -->
                    <entry>
                        <observation classCode="OBS" moodCode="EVN">
                            <templateId root="2.16.858.2.10000675.72591.4.38.1"/>
                            <code xsi:type="CV" code="439401001" codeSystem="2.16.840.1.113883.6.96"
                                codeSystemName="SNOMED CT" displayName="Descripción del diagnóstico"/>

                            <!-- Fecha de inicio -->
                            <effectiveTime xsi:type="IVL_TS">
                                <low value="20160822"/>
                            </effectiveTime>

                            <!-- Problema/diagnóstico -->
                            <value xsi:type="CV" code="262966007"
                                codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"
                                displayName="Desgarro muscular"/>

                            <!-- Estado del problema -->
                            <entryRelationship typeCode="COMP">
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.858.2.10000675.72591.4.40.1"/>
                                    <code xsi:type="CV" code="394731006" codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT" displayName ="Estado del problema"/>
                                    <value xsi:type="CV" code="7451000179108"
                                        codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT"
                                        displayName="Problema no resuelto"/>
                                </observation>
                            </entryRelationship>

                            <!-- Grado de certeza -->
                            <entryRelationship typeCode="COMP">
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.858.2.10000675.72591.4.35.1"/>
                                    <code xsi:type="CV" code="246103008" codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT" displayName="Grado de certeza"/>
                                    <value xsi:type="CV" code="255545003"
                                        codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Confirmado"/>
                                </observation>
                            </entryRelationship>
                        </observation>
                    </entry>
                </section>
            </component>

            <!-- Sección Procedimientos relevantes realizados -->
            <component>
                <section>
                    <templateId root="2.16.858.2.10000675.72591.2.22.1"/>
                    <code xsi:type="CV" code="47519-4" codeSystem="2.16.840.1.113883.6.1"
                        codeSystemName="LOINC" displayName="Procedimientos relevantes realizados"/>
                    <title>Procedimientos relevantes realizados</title>
                     <text>
                        <table>
                            <tbody>
                                <tr>
                                    <td>Descripción del procedimiento</td>
                                    <td>Vendaje de extremidad superior</td>
                                </tr>
                                <tr>
                                    <td>Resultado del procedimiento </td>
                                    <td>Normal</td>
                                </tr>	
                                <tr>
                                    <td>Observaciones relevantes</td>
                                    <td>Paciente sedado durante el procedimiento </td>
                                </tr>
                            </tbody>                                 
                        </table>                       
                    </text>

                    <!-- Cada uno de los procedimientos -->
                    <entry>
                        <procedure classCode="PROC" moodCode="EVN">
                            <templateId root="2.16.858.2.10000675.72591.4.20.1"/>
                            <code xsi:type="CV" code="229534005" codeSystem="2.16.840.1.113883.6.96"
                                codeSystemName="SNOMED CT"
                                displayName="Vendaje de extremidad superior"/>

                            <!-- Resultado del procedimiento -->
                            <entryRelationship typeCode="COMP">
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.858.2.10000675.72591.4.24.1"/>
                                    <code xsi:type="CV" code="258031000179107"
                                        codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT"
                                        displayName="Resultado del procedimiento"/>
                                    <value xsi:type="CV" code="280413001"
                                        codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT" displayName="Resultado Normal"/>
                                </observation>
                            </entryRelationship>

                            <!--Observaciones relevantes-->
                            <entryRelationship typeCode="COMP">
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.858.2.10000675.72591.4.18.1"/>
                                    <code xsi:type="CV" code="703852005"
                                        codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT" displayName="Observaciones relevantes"/>
                                    <value xsi:type="ST">Paciente sedado durante el
                                    procedimiento</value>
                                </observation>
                            </entryRelationship>
                        </procedure>
                    </entry>
                </section>
            </component>


            <!-- Sección Tratamientos no farmacológicos durante la asistencia -->
            <component>
                <section>
                    <templateId root="2.16.858.2.10000675.72591.2.39.1"/>
                    <code xsi:type="CV" code="258071000179109" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Tratamiento no farmacológico realizado durante la asistencia"/>
                    <title>Tratamiento no farmacológico realizado durante la asistencia</title>
                    <text>Indicación/recomendación:<br/>                        
                        <list>
                            <item>Administración de oxígeno</item>                       
                        </list>
                    </text>

                    <!-- Indicación/Recomendación -->
                    <entry>
                        <act classCode="ACT" moodCode="EVN">
                            <templateId root="2.16.858.2.10000675.72591.4.43.1"/>
                            <code xsi:type="CV" code="258061000179103" codeSystem="2.16.840.1.113883.6.96"
                                codeSystemName="SNOMED CT" displayName="Indicación/recomendación"/>
                            <text xsi:type="ST">Administración de oxígeno</text>
                        </act>
                    </entry>
                </section>
            </component>

            <!-- Sección Tratamiento Farmacológico durante la asistencia -->
            <component>
                <section>
                    <templateId root="2.16.858.2.10000675.72591.2.40.1"/>
                    <code xsi:type="CV" code="19011-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Tratamiento farmacológico realizado durante la asistencia"/>
                    <title>Tratamiento farmacológico realizado durante la asistencia</title>
                    <text> 
                        <list>
                            <item> Fármaco: paracetamol 650 mg comprimido</item>
                            <item> Observaciones relevantes: Se administra 1 comprimido </item>
                        </list>
                    </text>

                    <!-- Fármaco (Tratamiento farmacológico) -->
                    <entry>
                        <substanceAdministration classCode="SBADM" moodCode="EVN">
                            <templateId root="2.16.858.2.10000675.72591.4.44.1"/>
                            <code xsi:type="CV" code="258051000179101" codeSystem="2.16.840.1.113883.6.96"
                                codeSystemName="SNOMED CT" displayName="Fármaco"/>

                            <!-- Nombre del fármaco -->
                            <consumable>
                                <manufacturedProduct>
                                    <manufacturedMaterial>
                                        <!-- Descripción del producto farmacéutico -->
                                        <code xsi:type="CV" code="20921000179102" codeSystem="2.16.840.1.113883.6.96"
                                            codeSystemName="SNOMED CT"
                                            displayName="Paracetamol 650 mg comprimido"/>
                                    </manufacturedMaterial>
                                </manufacturedProduct>
                            </consumable>

                            <!-- Observaciones relevantes-->
                            <entryRelationship typeCode="COMP">
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.858.2.10000675.72591.4.18.1"/>
                                    <code xsi:type="CV" code="703852005" codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT" displayName="Observaciones relevantes"/>
                                    <value xsi:type="ST">Se administra 1 comprimido</value>
                                </observation>
                            </entryRelationship>
                        </substanceAdministration>
                    </entry>
                </section>
            </component>


            <!-- Sección Tratamientos no farmacológicos indicado al final de la asistencia -->
            <component>
                <section>
                    <templateId root="2.16.858.2.10000675.72591.2.39.1"/>
                    <code xsi:type="CV" code="258081000179106" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Tratamiento no farmacológico indicado al final de la asistencia"/>
                    <title>Tratamiento no farmacológico indicado al final de la asistencia</title>
                    <text>Indicación/recomendación: Hacer reposo durante las próximas 2 semanas</text>

                    <!-- Indicación/Recomendación -->
                    <entry>
                        <act classCode="ACT" moodCode="INT">
                            <templateId root="2.16.858.2.10000675.72591.4.43.1"/>
                            <code xsi:type="CV" code="258061000179103" codeSystem="2.16.840.1.113883.6.96"
                                codeSystemName="SNOMED CT" displayName="Indicación/recomendación"/>
                            <text>Hacer reposo durante las próximas 2 semanas</text>
                        </act>
                    </entry>
                </section>
            </component>

            <!-- Sección Tratamiento Farmacológico indicado al final de la asistencia -->
            <component>
                <section>
                    <templateId root="2.16.858.2.10000675.72591.2.40.1"/>
                    <code xsi:type="CV" code="29305-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Tratamiento Farmacológico indicado al final de la asistencia"/>
                    <title>Tratamiento farmacológico indicado al final de la asistencia</title>
                    <text> 
                        <list>
                            <item>Fármaco: 1 comprimido de paracetamol 650 mg comprimido </item>
                            <item>Vía de administración: Vía oral</item>
                            <item>Cantidad: 1 comprimido</item>
                            <item>Frecuencia de administración: Cada 8 horas</item>
                            <item>Momento de administración: Tomar con alimentos</item>
                            <item>Duración: 5 días</item>
                            <item>Observaciones relevantes: Suspender en caso de alguna reacción adversa</item>
                        </list>
                    </text>

                    <!-- Fármaco (Tratamiento farmacológico) -->
                    <entry>
                        <substanceAdministration classCode="SBADM" moodCode="INT">
                            <templateId root="2.16.858.2.10000675.72591.4.44.1"/>
                            <code xsi:type="CV" code="258051000179101" codeSystem="2.16.840.1.113883.6.96"
                                codeSystemName="SNOMED CT" displayName="Fármaco"/>

                            <!--Duración-->
                            <effectiveTime xsi:type="IVL_TS">
                                <width xsi:type="PQ" nullFlavor="OTH">                      
                                    <translation value="5"
                                        codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT"
                                        code="258703001"
                                        displayName="día/s">
                                    </translation>
                                </width>
                            </effectiveTime>

                            <!-- Vía de administración -->
                            <routeCode xsi:type="CV" code="26643006" codeSystem="2.16.840.1.113883.6.96"
                                codeSystemName="SNOMED CT"
                                displayName="Vía oral"/>

                            <!-- Cantidad -->
                            <doseQuantity xsi:type="IVL_PQ">
                                <width xsi:type="PQ" nullFlavor="OTH">                      
                                    <translation value="1"
                                        codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT"
                                        code="146545465641"
                                        displayName="comprimido/s">
                                    </translation>
                                </width>
                            </doseQuantity>

                            <!-- Nombre del fármaco -->
                            <consumable>
                                <manufacturedProduct>
                                    <manufacturedMaterial>
                                        <!-- Descripción clínica del producto -->
                                        <code xsi:type="CV" code="20921000179102" codeSystem="2.16.840.1.113883.6.96"
                                            codeSystemName="SNOMED CT"
                                            displayName="Paracetamol 650 mg comprimido"/>
                                    </manufacturedMaterial>
                                </manufacturedProduct>
                            </consumable>

                            <!-- Frecuencia de administración: cada 8 horas-->
                            <entryRelationship typeCode="COMP">
                                <observation classCode="OBS" moodCode="RQO">
                                    <templateId root="2.16.858.2.10000675.72591.4.71.1"/>
                                    <code xsi:type="CV" code="224851000179103" codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT" displayName="Frecuencia de administración"/>
                                    <value xsi:type="IVL_PQ">
                                        <width xsi:type="PQ" nullFlavor="OTH">                      
                                            <translation value="8"
                                                codeSystem="2.16.840.1.113883.6.96"
                                                codeSystemName="SNOMED CT"
                                                code="258702006"
                                                displayName="hora/s">
                                            </translation>
                                        </width>
                                    </value>
                                </observation>
                            </entryRelationship>

                            <!-- Momento de administración: con alimentos-->
                            <entryRelationship typeCode="COMP">
                                <act classCode="ACT" moodCode="INT">
                                    <templateId root="2.16.858.2.10000675.72591.4.54.1"/>
                                    <code xsi:type="CV" code="7891000179103" codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT" displayName="Momento de administración"/>
                                    <text xsi:type="ST">Tomar con alimentos</text>
                                </act>
                            </entryRelationship>

                            <!-- Observaciones -->
                            <entryRelationship typeCode="COMP">
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.858.2.10000675.72591.4.18.1"/>
                                    <code xsi:type="CV" code="703852005" codeSystem="2.16.840.1.113883.6.96"
                                        codeSystemName="SNOMED CT" displayName="Observaciones relevantes"/>
                                    <value xsi:type="ST">Suspender en caso de alguna reacción adversa</value>
                                </observation>
                            </entryRelationship>
                        </substanceAdministration>
                    </entry>
                </section>
            </component>

            <!-- Sección Instrucciones de seguimiento -->
            <component>
                <section>
                    <templateId root="2.16.858.2.10000675.72591.2.19.1"/>
                    <code xsi:type="CV" code="18776-5" codeSystem="2.16.840.1.113883.6.1"
                        codeSystemName="LOINC" displayName="Instrucciones de seguimiento"/>
                    <title>Instrucciones de seguimiento</title>
                    <text>
                        <list>
                            <item> Fecha de próxima consulta: 02/09/2019</item>
                            <item> Próxima consulta: Revisión a los 10 días </item>
                            <item> Referencia al alta: Consulta de atención primaria </item>
                     </list>
                    </text>

                    <!-- Fecha próxima consulta -->
                    <entry>
                        <observation classCode="OBS" moodCode="INT">
                            <templateId root="2.16.858.2.10000675.72591.4.9.1"/>
                            <code xsi:type="CV" code="7571000179104"
                                codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Fecha de próxima consulta"/>
                            <value xsi:type="TS" value="20190902"/>
                        </observation>
                    </entry>

                    <!-- Próxima consulta-->
                    <entry>
                        <observation classCode="OBS" moodCode="INT">
                            <templateId root="2.16.858.2.10000675.72591.4.19.1"/>
                            <code xsi:type="CV" code="7581000179102"
                                codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Próxima consulta"/>
                            <value xsi:type="ST">Revisión a los 10 días</value>
                        </observation>
                    </entry>

                    <!-- Referencia al alta-->
                    <entry>
                        <observation classCode="OBS" moodCode="INT">
                            <templateId root="2.16.858.2.10000675.72591.4.23.1"/>
                            <code xsi:type="CV" code="7731000179109"
                                codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"
                                displayName="Referencia al alta"/>
                            <value xsi:type="ST">Consulta de atención primaria</value>
                        </observation>
                    </entry>
                </section>
            </component>
        </structuredBody>
    </component>
</ClinicalDocument>


```



## Resource Binary Content

text/xml:

```
[B@658b7845
```
