Instance: Questionario
Title: "Questionario de comorbilidades"
Description: "Preguntas respecto si el paciente posee alguna comorbilidades"
InstanceOf: Questionnaire
Usage: #Example 

* name = "QuestionarioMorbilidades"
* title = "Preguntas sobre comorbilidades del paciente"
* status = #active 

* item[0].linkId = "Hipertencion"
* item[=].text = "Si el paciente padece hipertensión"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false 

* item[+].linkId = "Diabetes"
* item[=].text = "Si el paciente padece Diabetes y si es así que tipo"
* item[=].type = #choice
* item[=].answerValueSet = "http://falp.cl/ValueSet/VSDiab"
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