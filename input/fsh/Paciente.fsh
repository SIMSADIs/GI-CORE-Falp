Profile: PacienteFalp
Parent: CorePacienteCl
Id: PacienteFalp
Title: "Paciente FALP"
Description: "Perfil de Paciente FALP"

* extension contains SexoBiologico named Sexobiologico 1..1 
* extension[SexoBiologico].valueCodeableConcept 1..1
* extension contains Nacionalidad named Nacionalidad 1..*

* birthDate 1..1

* identifier 1..* 

* address 1..* 
* address only cl-address
  * extension[Geolocalizacion] 0..1
  * city 1..1
  * district 0..1
  * state 0..1 

* contact 1..*
* contact.extension[IdContacto] 0..* 
* contact.name.family 0..1
* contact.name.given 0..1
* contact.relationship 1..1
* contact.telecom 1..* MS
* contact.telecom.value ^short = "Detalles de Contacto"
* contact.telecom.value ^definition = "Detalles del Contacto, comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
* contact.telecom.[MyTelecomExtension].valueString 
* contact.address only cl-address
* contact.address
  * state 0..1 MS

