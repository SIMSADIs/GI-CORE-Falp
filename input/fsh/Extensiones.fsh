Extension: SexoBiologico
Id: SexoBiologico
Title: "Sexo biólogico"
Description: "Sexo asignado al nacer "
Context: Patient 
* ^experimental = true
* value[x] only CodeableConcept
  * ^short = "Sexo biólogico"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSSexoBiologico 
  * ^binding.description = "Tabla de Sexo biólogico"

Extension: Nacionalidad
Id: Nacionalidad
Title: "Nacionalidad"
Description: "País de nacimiento y/o que haya sido nacionalizado"
Context: Patient
* value[x] only CodeableConcept
  * ^short = "Nacionalidad"
* valueCodeableConcept from https://hl7chile.cl/fhir/ig/clcore/ValueSet/CodPais
  * ^binding.description = "Tabla de Nacionalidad"

//COVERAGE//

Extension: PrevisionExtension
Id:  Prevision
Title: "Set de códigos de previones de Salud"
Description: "Set de códigos de previsiones de Salud"
Context: Coverage 
* ^experimental = true
* value[x] only CodeableConcept
  * ^short = "Previones de Salud"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSPrevision
  * ^binding.description = "Tabla de previsiones"

Extension: TramosFonasaExtension
Id:  TramosFonasa
Title: "Set de códigos de tramos de Fonasa"
Description: "Set de códigos de tramos de Fonasa"
Context: Coverage 
* ^experimental = true
* value[x] only CodeableConcept
  * ^short = "Tramos de Fonasa"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTramosFonasa
  * ^binding.description = "Tabla de tramos de Fonasa"

Extension: SegCapa
Id: SegCapa
Title: "Seguros Segunda Capa"
Description: "Si el paciente posee algún Seguro de Segunda Capa"
Context: Coverage 
* value[x] only boolean


Extension: NombreSeguro
Id: NombreSeguro
Title: "Nombre y/o código del Seguro Segunda Capa"
Description: "Nombre y/o código del Seguro Segunda Capa si corresponde"
Context: Coverage 
* value[x] only string 
* valueString 1..1

//SOLICITUD DEL PROCEDIMIENTO// 
Extension: FechaSolicitud
Id: Fecha-Solicitud
Title: "Fecha de Solicitud"
Description: "Fecha en que se realizó la solicitud del procedimiento."
Context: Condition , ServiceRequest
* value[x] only dateTime 


//REPORTE DE PROCEDIMIENTO//

Extension: TipoProcedimiento
Id:  TipoProcedimiento
Title: "Set de códigos de tipos de procedimientos"
Description: "Set de códigos de tipos de procedimientos"
Context: Condition , Procedure
* value[x] only string 


Extension: FechaProcedimiento
Id: FechaProcedimiento
Title: "Fecha de Procedimiento"
Description: "Fecha en que se realizó el procedimiento."
Context: Condition 
* value[x] only dateTime 

Extension: UrgenciaProcedimiento
Id: UrgenciaProcedimiento
Title: "Urgencia del Procedimiento"
Description: "Valoración subjetivade la urgencia del Procedimiento"
Context: ServiceRequest
* ^experimental = true
* value[x] only CodeableConcept
  * ^short =  "Urgencia del Procedimiento"
* valueCodeableConcept from VSurgProcedimiento
  * ^binding.description = "Nivel de urgencia"

Extension: Observacion
Id: Observacion 
Title: "Observación"
Description: "Alguna observación para el procedimiento"
Context: Condition , Procedure
* value[x] only string 


//DIAGNÓSTICO//
/*
Extension: FechaDiagnostica
Id: FechaDiagnostica
Title: "Fecha de Diagnóstico"
Description: "Fecha en que se realizó el diagnóstico."
Context: CoreDiagnosticoCl
* valueDateTime 
*/
// HISTORIA CLINICA //

//PRESTADOR INDIVIDUAL///

Extension: Mension
Id: Mension 
Title: "Nombre de la mensión de su titulo profesional"
Description: "Nombre de la mensión de su titulo profesional si corresponde"
Context: Practitioner
* value[x] only string 
* valueString 

//ORGANIZACIÓN//
Extension: TipoSistemaSalud
Id: TipoSistemaSalud
Title: "Tipos de Sistemas de Salud"
Description: "Tipos de Sistemas de Salud"
Context: Organization 
* ^experimental = true
* value[x] only CodeableConcept
  * ^short = "Tipos de Sistemas de Salud"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoSistemaSalud
  * ^binding.description = "Tipos de Sistemas de Salud"

Extension: TipoEstablecimientosPublicos
Id: TipoEstablecimientosPublicos
Title: "Tipos de Establecimientos Publicos"
Description: "Tipos de Establecimientos Publicos"
Context: Organizacion
* ^experimental = true
* value[x] only CodeableConcept
  * ^short = "Tipos de Establecimientos Publicos"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoEstablecimientosPublicos 
  * ^binding.description = "Tipos de Establecimientos Publicos"

Extension: NivelAtencion
Id: NivelAtencion
Title: "Nivel de Atención"
Description: "Nivel de atención que se asigna según la cobertura y complejidad"
Context: Organizacion
* ^experimental = true
* value[x] only CodeableConcept
  * ^short = "Nivel de Atencion"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSNivelAtencion
  * ^binding.description = "Nivel de atención que se asigna según la cobertura y complejidad"

Extension: TipoPertinenciaEstab	
Id: TipoPertinenciaEstab	
Title: "Pertinencia SNSS"
Description: "Atributo o característica del establecimiento relacionado con la relación de jurisdicción establecia con el Sistema Nacional de Servicio de Salud"
Context: Organizacion
* ^experimental = true
* value[x] only CodeableConcept
  * ^short = "Pertinencia SNSS"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoPertinenciaEstab 
  * ^binding.description = "Atributo o característica del establecimiento relacionado con la relación de jurisdicción establecia con el Sistema Nacional de Servicio de Salud"
