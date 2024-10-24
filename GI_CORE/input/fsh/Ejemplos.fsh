Instance: EjPaciente
InstanceOf: Paciente 
Usage: #Example
Title: "Ejemplo paciente FALP"
Description: "Ejemplo de un paciente con las necesidades de la FALP"


* extension[Sexobiologico].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSSexoBiologico"
* extension[Sexobiologico].valueCodeableConcept.coding = #1 "Hombre"

* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152 "Chile"


* name[NombreOficial].family = "Perez"
* name[NombreOficial].given[0] = "Franchesco"
* name[NombreOficial].use = #official

* birthDate = "1980-01-01"

* identifier.use = #secondary
* identifier.type = #01
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
* identifier.type.coding.display = "Rol Único Nacional o RUN"
* identifier.value = "30.696.558-7"

* active = true

* address.use = #home
* address.line[0] = "Calle 6 Norte, 52, pieza 802"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"


* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N "Next of Kin"

* contact.address.use = #home
* contact.address.line[0] = "Gregorio Mira 123" 

* contact.address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* contact.address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/RegionesCl"
* contact.address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"


//* contact.name.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto" //falta agregar identificaor del acompañante revisar bien todo lo que tenga que ver con el contacto 
* contact.name.use =  #official
* contact.name.family = "Gonzalez"
* contact.name.given[0] = "Maria"
 
* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"

// esto sería el slice de tutID obligatorio 
* contact.extension.extension.url = "tutId"
* contact.extension.extension.valueIdentifier.use = #official "Official"
//* contact.extension.extension.valueIdentifier.type = #PPN 
* contact.extension.extension.valueIdentifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* contact.extension.extension.valueIdentifier.type.coding.code = #3
* contact.extension.extension.valueIdentifier.type.coding.display = "PPN"
* contact.extension.extension.valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension.valueIdentifier.value = "12.435.789-k"

* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+56912345678"
* contact.telecom[0].use = #mobile
* contact.telecom[0].system = #email
* contact.telecom[0].value = "maria.gonzalez@example.com"
* contact.telecom[0].use = #home

// * contact.telecom[0].extension[MyTelecomExtension].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/MyTelecomExtension"
* contact.telecom[0].extension[MyTelecomExtension].valueString = "ejemplo@correoaompañante.cl"

Instance: EjPrestacionSalud
InstanceOf: PrestacionSalud
Usage: #Example
Title: "Example Presentación de Salud"
Description: "An example Prestación de Salud instance." 

* id = "example-coverage"
* status = #active
* beneficiary = Reference(EjPaciente)
* payor[0] = Reference(EjOrganizacion)

* extension[PrevisionSalud].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSPrevision"
* extension[PrevisionSalud].valueCodeableConcept.coding.code = #1 "FONASA"

* extension[TramosFonasa].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTramosFonasa"
* extension[TramosFonasa].valueCodeableConcept.coding.code = #C "TRAMO C"

* extension[SegCapa].valueBoolean = true

* extension[NombreSeguro].valueString = "MEGA TRONIX 1000"

//* extension[Referencia].valueReference = Reference(EjPaciente)

//SOLICITUD DEL PROCEDIMIENTO //
Instance: EjSolicitudProcedimiento
InstanceOf: SolicitudProcedimiento
Usage: #Example 
Title: "Solicitud del Procedimiento"
Description: "An example Solicitud del Procedimiento instance." 

* id = "example-SolicitudProcedimiento"
* status = #completed
* subject = Reference(EjPaciente) 

* extension[FechaSolicitud].valueDateTime = "2024-07-17"

* extension[TipoProcedimiento].valueString = "BIOPSIA"

* extension[UrgenciaProcedimiento].valueCodeableConcept.coding.system = "http://falp.cl/CodeSystem/CSurgProcedimiento"
* extension[UrgenciaProcedimiento].valueCodeableConcept.coding = #MEDIA "MEDIA"

* extension[Observacion].valueString = "Alergica a la anestesia"

* extension[Referencia].valueReference = Reference(EjPaciente)

//REPORTE DEL PROCEDIMIENTO //

Instance: EjReporteProcedimiento
InstanceOf: ReporteProcedimiento
Usage: #Example 
Title: "Reporte del Procedimiento"
Description: "An example Reporte del Procedimiento instance." 

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* id = "example-ReporteProcedimiento"
* subject = Reference(EjPaciente) 

* extension[FechaSolicitud].valueDateTime = "2024-07-03"

* extension[FechaProcedimiento].valueDateTime = "2024-09-15"

* extension[TipoProcedimiento].valueString = "BIOPSIA"

* extension[Observacion].valueString = "Ninguna"

* extension[Referencia].valueReference = Reference(EjPaciente)
 
// HISTORIA CLINICA //

Instance: EjHistorialClinico
InstanceOf: HistorialClinico
Usage: #Example 
Title: "Example-HistoriaClínica"
Description: "An example Historia Clínica instance."  

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

//* id = "example-HistoriaClinica"
* subject = Reference(EjPaciente) 

* extension[FechaDiagnostica].valueDateTime = "2024-08-02"

* extension[TerminoClinico].valueString = "CANCER AL RIÑON"

* extension[SeveridadDiagnostico].valueCodeableConcept.coding.system = "http://falp.cl/CodeSystem/CSseveridadDiagnostica"
* extension[SeveridadDiagnostico].valueCodeableConcept.coding = #MODERADO "MODERADO"

* extension[Observacion].valueString = "RIÑON DERECHO"

* extension[Referencia].valueReference = Reference(EjPaciente)

// PRESTADOR INDIVIDUAL  //
Instance: EjPrestadorIndividual
InstanceOf: PrestadorIndividual
Usage: #Example 
Title: "Example Prestador Individual"
Description: "An example Prestador individual instance." 

* id = "example-PrestadorIndividual"
* name.family = "Gonzaléz"
* name.given = "Pedro"
* birthDate = "1980-12-25" 


//* identifier.use = #official
//* identifier.type = #MD "Medical License number"
* identifier.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* identifier.value = "15.666.378-2"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* identifier.type.coding.code = #2
* identifier.type.coding.display = "RNPI"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

* extension[Mension].valueString = "NEFROLOGO" 

* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTituloProfesional"
* qualification[Cert].code.coding.code = #1
* qualification[Cert].code.text = "Certificado(s)"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSEspecialidadMedica"
* qualification[SubEsp].code.coding.code = #4
* qualification[SubEsp].code.text = "SubEspecialidad(es)"

// ORGANIZACIÓN // 
Instance: EjOrganizacion
InstanceOf: Organizacion
Usage: #Example 
Title: "Example-Organización"
Description: "An example Organización instance."  

* id = "example-Organizacion"
* extension[TipoSistemaSalud].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoSistemaSalud"
* extension[TipoSistemaSalud].valueCodeableConcept.coding = #1 "Público"

* identifier[0].system = "http://example.org/identifiers"
* identifier[0].value = "7777777-7"

//* extension[TipoEstablecimientosPublicos].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoEstablecimientosPublicos"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoEstablecimientosPublicos"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.code = #4 "Establecimientos Hospitalarios"

//* extension[NivelAtencion].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSNivelAtencion"
* extension[NivelAtencion].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSNivelAtencion"
* extension[NivelAtencion].valueCodeableConcept.coding.code = #3 "Nivel Terciario"

//* extension[TipoPertinenciaEstab].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoPertinenciaEstab"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoPertinenciaEstab"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.code = #1 "Perteneciente al Sistema Nacional de Servicios de Salud"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/RegionesCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

// LOCALIZACIÓN // 

Instance: EjLocalizacion
InstanceOf: Localizacion
Usage: #Example 
Title: "Example-Localizacion"
Description: "An example Localizacion instance."  

* id = "example-Localizacion"
* status = #active
* position.latitude = 51.5074
* position.longitude = -0.1278 
* managingOrganization = Reference(EjOrganizacion)

