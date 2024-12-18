Profile: RespCuestionario
Parent: QuestionnaireResponse
Id: RespCuestionario 
Title: "Respuestas de Cuestionario de Comorbilidades" // Cuestionsrio de comorbilidades  
Description: "Historia clinica respecto a diagnóstico previos si posee el Paciente" 

* identifier 1..1 
* status = #completed 

* questionnaire 1..1

* subject 1..1
* subject only Reference(PacienteFalp)
* authored 1..1
* author only Reference (PrestadorIndividual or Organizacion)

