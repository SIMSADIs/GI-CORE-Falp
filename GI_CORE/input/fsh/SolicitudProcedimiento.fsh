Profile: SolicitudProcedimiento
Parent: Procedure
Id: SolicitudProcedimiento
Title: "Solicitud del Procedimiento"
Description: "Perfil de Solicitud del Procedimiento"


* extension contains FechaSolicitud named FechaSolicitud 1..1 
//* extension[FechaSolicitud].valueDateTime 1..1
* extension[FechaSolicitud].valueDateTime ^short = "Fecha en que se realizó la solicitud del procedimiento"
* extension[FechaSolicitud].valueDateTime ^definition = "Fecha en que solicitud el procedimiento"
* extension contains TipoProcedimiento named TiposProcedimientos 1..1 
//* extension[TipoProcedimiento].valueCodeableConcept 1..1
* extension contains UrgenciaProcedimiento named UrgenciaProcedimiento 0..1
* extension[UrgenciaProcedimiento].valueCodeableConcept 0..1
* extension contains Observacion named Observacion 0..1
* extension[Observacion].valueString 0..1

* extension contains Referencia named Referencia 1..1 
//* extension[Referencia].valueReference 0..1