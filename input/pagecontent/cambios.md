## Historial de Cambios 

### Versión 1.0.1

Se realizaron diferentes cambios respecto a la versión 0.0.1, sobre todo en la utilziación de perfiles y terminologías, se eliminó el uso de extensiones que abarcaban elementos ya existentes en los recursos, se agregó otrs perfiles faltantes, se realizó un validación de los perfiles con la herramienta QA report y se agregó contenido a la guía. 

### Template

Se agregó una carpeta template, proveniente de HL7 Chile, para colocar los logos de HL7 Chile y la FALP, en la parte superior de la guía

  * Cambio id de guía: fhir.falp --> hl7.fhir.cl.falpcore
  * Cambio nombre guía: falp --> FALP_CORE
  * Cambio canonical: http://falp.cl --> https://FALP.cl
  * cambio jurisdiction: --> urn:iso:std:iso:3166#CL "Chile"
  * Cambio dependencia versión CORE CL: 1.8.10 --> 1.9.1

### Páginas

Se agregaron diferentes pestañas en la barra superior de la guía, además de agregar contenido explicativo en estas.

  * [Inicio](index.html)
  * [Objetivos](objetivos.html)
  * [Historial de cambios](cambios.html)



### Perfiles

#### [CondicionClinica](StructureDefinition-CondicionClinica.html)

Se modificó el nombre de este perfil y se modificaron sus elementos internos, además de modificar su terminología.

  * Nombre perfil: Historial clínico --> CondicioClinica
  * Se agregaron los elementos: identifier, clinicalStatus, verificationStatus, category (Fixed value = #problem-list-item)
  * Extension [FechaDiagnostica] --> Elemento [onsetDataTime]
  * Extension [TerminoClinico] --> Elemento [code]
    * code from https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSDiagnosticosSCT
  * Extension [SeveridadDiagnostico] --> Elemento [severity]
    * severity from https://FALP.cl/ValueSet/VSseveridadDiagnostica
  * Extension [observacion] --> elemento [note]
  * Extension [Referencia] eliminada (Referencia al paciente con elemento subject)

#### Paciente

Dentro del perfil paciente hubo cambios menores:

  * Eliminación de elemento name del perfil
  * Eliminación de elemento contact.extension.url = "BackboneElement"
  * Eliminación de elemento contact.extension[IDContacto] repetido 
  * Cambio de cardinalidad para: 
    * address.district: 1..1 --> 0..1
    * address.state: 1..1 --> 0..1
    * contact.name.family: 1..1 --> 0..1
    * contact.name.given: 1..1 --> 0..1
    * contact.address.state: 1..1 --> 0..1

#### PrestacionSalud

  * Extension [Referencia] eliminada (Referencia al paciente con elemento subject)

#### ServicioSolicitante

Se agregó el perfil, proveniente de la guía de biopsia, con el fin de permitir mayor compatibilidad

#### SolicitudProcedimiento

Cambio de recurso referencia en en el perfil. Procedure --> ServiceRequest

  * Extension [TipoProcedimiento] --> elemento [code]
    * code from http://hl7.org/fhir/ValueSet/procedure-code
  * Extension [Observacion] --> elemento [note]
  * Extension [Referencia] eliminada (Referencia al paciente con elemento subject)

### Extensiones

Se realizaron diferentes cambios en las extensiones

  * Se eliminaron las extensiones: Genero, MyTelecomExtension, fechaDiagnóstico, TeminoClinico, SeveridadDiagnostico, Referencia

### Terminologías 

#### CodeSystem y ValueSet

Se agregaron elementos a la meta a todos los CodeSystems y ValueSets 

  * elementos: jurisdiction, version y status

### Ejemplos

#### Ejemplo paciente

  * Se eliminó el elemento meta.profile, que referenciaba a otro perfil
  * Se cambio el binding terminloógico para el elemento identifier.type.coding.system: --> https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador. Por consiguiente se cambió el código y display del elemento type: #PPN --> #01 ; "Passport Number" --> "RUN"
  * Se cambió el identifier.value: "P102145874" --> "30.696.558-7"
  * Se cambió el binding terminológico del elemento address.state.extension.valueCodeableConcept.coding.system: --> https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl
  * Se eliminó la repetición de slice "tutId"
  * Se eliminó extension MyTelecomExtension

#### Ejemplo PrevisionSalud

  * Se eliminó extension Referencia

#### Ejemplo SolicitudProcedimiento

  * Se eliminó extension TipoProcedimiento y Observacion 
  * Se agregó elemento code y elemento note

#### Ejemplo ReporteProcedimiento

  * Se eliminó extension Referencia

#### Ejemplo DiagnosticoPrevio

Se realizaron cambios en todo el ejemplo, debido a todos los cambios del perfil

#### Ejemplo PrestadorIndividual

  * Se cambio el binding terminloógico para el elemento identifier.type.coding.system: --> https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador. Por consiguiente se cambió el código y display del elemento type: #MD --> #01 ; "Medical License number" --> "RUN"
  * Se cambió el identifier.value: "akxpkx" --> "15.666.378-2"

#### Ejemplo ServicioSolicitante

Se agregó ejemplo para este perfil 
