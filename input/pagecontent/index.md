### Introducción 

Esta guía, en conjunto con todas las guías de implementación de la Fundación Arturo López Pérez, están basadas en el estándar [HL7 FHIR R4].
Ellas buscan modelar de manera interoperable el viaje del paciente, con el fin de realizar un seguimiento oportuno de los pacientes.

La guía de implementación CORE busca entregar los perfiles adaptados para los casos de uso de la Fundación Arturo López Pérez, donde se definene la cardinalidad de los elementos de los perfiles y sus terminologías. Esta guía se basa en la guía de implementació CORE CL. 

### Cómo leer esta guía

En la parte superior puede ver la barra de menú, donde aparecen las diferentes secciones o páginas de esta guía:

* [Inicio](index.html): Entrega información general acerca de la guía.
* [Objetivos](objetivos.html): Describe los objeivos de la guía, su función y un acercamiento a como debe ser usada.
* [Artefactos](artifacts.html): Se encuentran agrupados los artefactos por tipo:
    * [Perfiles](artifacts.html#structures-resource-profiles): Perfiles IPS generados para la guía. 
    * [ValueSets](artifacts.html#terminology-value-sets): ValueSet creados para funcionamientos de la guía.
    * [CodeSystems](artifacts.html#terminology-code-systems): Codesystem creados para funcionamientos de la guía.
    * [Ejemplos](artifacts.html#example-example-instances): Instancias creadas como ejemplo de los doferentes perfiles de la guía.
* [Historial de cambios](cambios.html): Historial de cambios o versiones que has sido realizados en la guía a lo largo del tiempo.


### Perfiles 

{% include globals-table.xhtml %}

Los perfiles que fueron diseñados en esta guía son: 

  * [Cuestionario de comorbilidades](StructureDefinition-Cuestionario.html)
  * [Diagnóstico previo](StructureDefinition-DiagnosticoPrevio.html)
  * [Localicación](StructureDefinition-Localizacion.html)
  * [Organización](StructureDefinition-Organizacion.html)
  * [Paciente](StructureDefinition-Paciente.html)
  * [Prestación de salud](StructureDefinition-PrestacionSalud.html)
  * [Prestador Individual](StructureDefinition-PrestadorIndividual.html)
  * [Reporte de procedimiento](StructureDefinition-ReporteProcedimiento.html)
  * [Respuesta de cuestionario](StructureDefinition-RespCuestionario.html)
  * [Servicio solicitante](StructureDefinition-ServicioSolicitante.html)
  * [Solicitud de procedimiento](StructureDefinition-SolicitudProcedimiento.html)

### Dependencias

{% include dependency-table.xhtml %}

### Autores 

  * Antonia Cuevas 
  * Esteban Fredes 

### Análisis de versiones cruzadas

{% include cross-version-analysis.xhtml %}


### Declaracion de propiedad intelectual

{% include ip-statements.xhtml %}