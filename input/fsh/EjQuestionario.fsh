Alias: $CSDiab = http://falp.cl/fhir/ig/corefalp/ValueSet/VSDiab

Instance: PregCuestionario
Title: "Questionario de comorbilidades"
Description: "Preguntas respecto si el paciente posee alguna comorbilidades"
InstanceOf: Cuestionario
Usage: #Example 

* identifier.value = "Cuestionario"
* name = "QuestionarioMorbilidades"
* title = "Preguntas sobre comorbilidades del paciente"
* status = #active 

* item[0].linkId = "Hipertension"
* item[=].text = "Si el paciente padece hipertensión"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false 

* item[+].linkId = "Diabetes"
* item[=].text = "Si el paciente padece Diabetes y si es así que tipo"
* item[=].type = #choice
* item[=].answerValueSet = "http://falp.cl/fhir/ig/corefalp/ValueSet/VSDiab"
* item[=].required = true
* item[=].repeats = false 

* item[+].linkId = "Cardiopatias"
* item[=].text = "Si el paciente padece alguna Cardipatia"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false 

* item[+].linkId = "Enfermedades pulmonares"
* item[=].text = "Si el paciente padece alguna emfermedades pulmonares"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false 


Instance: EjcuestionarioResp
InstanceOf: RespCuestionario
Usage: #example
Title: "EjcuestionarioResp"
Description: "Respuestas de cuestionario de comorbilidades"

* identifier.value = "RespCuestionario"

* questionnaire = "http://falp.cl/fhir/ig/corefalp/Questionnaire/PregCuestionario"

* subject.display = "Paciente"
* authored = "2025-02-07T13:28:17-05:00"
* author.display = "Prestador"


* item[0].linkId = "Hipertension"
* item[=].text = "Si el paciente padece hipertensión"
* item[=].answer.valueBoolean = true

* item[+].linkId = "Diabetes"
* item[=].text = "Si el paciente padece Diabetes y si es así que tipo"
* item[=].answer.valueCoding = CSDiab#tipo1

* item[+].linkId = "Cardiopatias"
* item[=].text = "Si el paciente padece alguna Cardipatia"
* item[=].answer.valueBoolean = true

* item[+].linkId = "Enfermedades pulmonares"
* item[+].linkId = "Enfermedades pulmonares"
* item[=].answer.valueBoolean = true
