Profile: Questionario
Parent: QuestionnaireResponse
Id: Questionario         
Title: "Cuestionario de Comorbilidades" // Cuestionsrio de comorbilidades  
Description: "Historia clinica respecto a diagnóstico previos si posee el Paciente" 

* identifier 1..1 
* status = #completed 

* questionnaire 1..1
* questionnaire = "http://falp.cl/ValueSet/VSDiab"
* subject 1..1
* subject only Reference(Paciente)
* authored 1..1
* author only Reference (PrestadorIndividual or Organizacion)

