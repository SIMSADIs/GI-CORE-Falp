Profile: SolicitudProcedimiento
Parent: ServiceRequest
Id: SolicitudProcedimiento
Title: "Solicitud del Procedimiento"
Description: "Perfil de Solicitud del Procedimiento"


* extension contains FechaSolicitud named FechaSolicitud 1..1 
* extension[FechaSolicitud].valueDateTime ^short = "Fecha en que se realizó la solicitud del procedimiento"
* extension[FechaSolicitud].valueDateTime ^definition = "Fecha en que solicitud el procedimiento"

* extension contains UrgenciaProcedimiento named UrgenciaProcedimiento 0..1

* code 1.. MS 
  * ^short = "Tipo de procedimiento que se solicita realizar"
* code from http://hl7.org/fhir/ValueSet/procedure-code

* note 0..1 MS
  * ^short = "Espacio para información que se considere necesaria entregar en la solicitud"


