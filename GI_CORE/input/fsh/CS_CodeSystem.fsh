
////////////////////////////////////////////////////////////////////////////////////////////////////////////


CodeSystem: CSurgProcedimiento
Id: CSurgProcedimiento
Title: "Tramos de la urgencia del Procedimiento"
Description: "Código asociados a la urgencia del Procedimiento"
* ^caseSensitive = true
* ^experimental = false 
* #BAJA "BAJA"
* #MEDIA "MEDIA" 
* #ALTA "ALTA"

//////////////////////////////////////////////////////////////////////////////////////////////////////////

CodeSystem: CSseveridadDiagnostica
Id: CSseveridadDiagnostica
Title: "Tramos de Severidad Diagnóstica" 
Description: "Tramos de Severidad Diagnóstica dependiendo de la valoración subjetiva de la gravedad de la enfermedad evaluada por el clínico"
* ^caseSensitive = true 
* ^experimental = false   
* #LEVE "LEVE"
* #MODERADO "MODERADO"
* #GRAVE "GRAVE"

// ORGANIZACION //

//QUESTIONARIO//
CodeSystem: CSDiab
Id: CSDiab
Title: "Tipo de diabetes y opción de si no posee"
Description: "Nombres del tipo de diabetes y opción de si no posee"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #tipo1 "Diabetes Tipo 1"
* #tipo2 "Diabetes Tipo 2"
* #No "No posee" 
