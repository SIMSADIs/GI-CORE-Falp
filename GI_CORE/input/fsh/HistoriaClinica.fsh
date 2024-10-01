Profile: HistorialClinico
Parent: CoreDiagnosticoCl
Id: HistorialClinico     
Title: "Historial Clínico"
Description: "Historia clinica respecto a diagnóstico previos si posee el Paciente" 

* extension contains FechaDiagnostica named FechaDiagnostica 1..1 
* extension[FechaDiagnostica].valueDateTime 1..1
* extension[FechaDiagnostica].valueDateTime MS
* extension[FechaDiagnostica].valueDateTime ^short = "Fecha en que se realizó el diagnóstico"
* extension contains TerminoClinico named TerminoClinico 1..*
* extension contains SeveridadDiagnostico named SeveridadDiagnostico 0..1   
* extension contains Observacion named Observacion 0..1

* extension contains Referencia named Referencia 1..1 

