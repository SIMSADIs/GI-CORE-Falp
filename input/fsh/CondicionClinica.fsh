Profile: CondicionClinica
Parent: CoreDiagnosticoCl
Id: CondicionClinica
Title: "CondicionClinica"
Description: "Condición clinica que presenta el paciente"

* identifier 0.. MS
* clinicalStatus 0..1 MS
  *  ^short = "Estado clinico de la condicion"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical

* verificationStatus 0..1 MS
  *  ^short = "Estado de verificacion de la condición"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status

* category 1..1 MS
  * ^short = "Categoria del tipo condition. Permite diferenciar el perfil dentro del bundle"
* category from http://hl7.org/fhir/ValueSet/condition-category
* category.coding.code = #problem-list-item

* subject only Reference(PacienteFalp)

* onsetDateTime 1..1 MS
  * ^short = "Fecha en la que se realizó el diagnóstico"
* code 1.. MS 
  *  ^short = "Codigo usado para el diagnóstico previo"
* code from https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSDiagnosticosSCT
* severity 0..1 MS
* severity from https://falp.cl/fhir/ig/corefalp/ValueSet/VSseveridadDiagnostica
* note 0..1 MS
  * ^short = "Espacio para anotar cualquier información que se considere relevante"