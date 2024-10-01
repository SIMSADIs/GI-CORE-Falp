Profile: ReporteProcedimiento
Id: ReporteProcedimiento
Parent: Condition
Title: "Reporte del Procedimiento"
Description: "Perfil de Reporte del Procedimiento"

//* url = "http:​/​/falp​.cl​/StructureDefinition​/ReporteProcedimiento"
* extension contains FechaSolicitud named FechaProcedimiento 1..1 
//* extension[FechaProcedimiento].valueDateTime 1..1
//* extension[FechaProcedimiento].valueDateTime MS
* extension[FechaProcedimiento].valueDateTime ^short = "Fecha en que se realizó el procedimiento"
* extension[FechaProcedimiento].valueDateTime ^definition = "Fecha en que se realizo el procedimiento"
* extension contains TipoProcedimiento named TiposProcedimientos 1..1 
* extension contains Observacion named Observacion 0..1
* extension contains Referencia named Referencia 1..1 
