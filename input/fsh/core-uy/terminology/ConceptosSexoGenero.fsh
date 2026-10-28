ValueSet: VSSexoBiologico
Id: vs-sexo-biologico
Title: "Conjunto de Valores Sexo Biológico"
Description: "Sexo biológico: listado de códigos."
* ^status = #draft

* http://hl7.org/fhir/administrative-gender#male "Male"
* http://hl7.org/fhir/administrative-gender#female "Female"

ValueSet: VSPronombresUY
Id: vs-pronombres-uy
Title: "Pronombres personales en Uruguay"
Description: "Pronombres personales: listado de códigos."
* ^status = #draft

* include $LOINC#LA29518-0 "he/him/his/his/himself"
  * ^designation[0].language = #es-UY
  * ^designation[0].value = "él/lo/su/suyo/sí mismo"

* include $LOINC#LA29519-8 "she/her/her/hers/herself"
  * ^designation[0].language = #es-UY
  * ^designation[0].value = "ella/la/su/suya/sí misma"

* include $LOINC#LA29520-6 "they/them/their/theirs/themselves"
  * ^designation[0].language = #es-UY
  * ^designation[0].value = "elle/le/su/suye/sí mismx"