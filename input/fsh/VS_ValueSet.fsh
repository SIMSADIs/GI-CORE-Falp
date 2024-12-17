
ValueSet: VSurgProcedimiento
Id: VSurgProcedimiento
Title: "Urgencia del Procedimiento"
Description: "Códigos asociados a la Urgencia del Procedimiento"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"

* include codes from system CSurgProcedimiento
////////////////////////////////////////////////////////////////////////////////////////////////////////////

ValueSet: VSseveridadDiagnostica
Id: VSseveridadDiagnostica
Title: "Severidad Diagnostica"
Description: "Valoración subjetiva de la gravedad de la enfermedad evaluada por el clínico"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"

* include codes from system CSseveridadDiagnostica
//QUESTIONARIO//
ValueSet: VSDiab
Id: VSDiab
Title: "Tipos de diabetes y opción de si no posee"
Description: "Códigos asociados Tipo de diabetes y opción de si no posee"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSDiab