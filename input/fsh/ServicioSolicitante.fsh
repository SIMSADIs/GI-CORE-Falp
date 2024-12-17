Profile : ServicioSolicitante
Parent : HealthcareService
Id: ServicioSolicitante
Description: "Este es un perfil donde se encontrarán los datos del servicio de salud que realiza la petición de muestra"

* identifier    1..1 
  * ^short = "Identificador del servicio solicitante"
  * ^definition = "Se define el identificador como aquel que lo distingue del resto de los servicios clínicos."
//  * extension contains  http://hl7.org/fhir/StructureDefinition/identifier-validDate named identificador  0..1

* specialty 1..1 
* specialty from http://hl7.org/fhir/ValueSet/c80-practice-codes

* name 1..1

* providedBy 1..1
* providedBy only Reference(Organizacion)