# Desarrollo de una guía de implementación IPS para la Fundación Arturo López Pérez

El cáncer es la principal causa de muerte en Chile. Anuelmente se diagnostican entre 56.000 a 58.000 nuevos casos y más de la mitad terminan con el fallecimiento del paciente.El Ministerio de Salud implementó el Plan Nacional del Cáncer, con el objetivo de reducir la mortalidad e incidencia de esta enfermedad, además de mejorar otros aspectos relacionadas a esta y los pacientes. Uno de los lineamientos de esta política pública es la creación de un Registro Nacional del Cáncer, una herramienta que permitirá realizar un seguimiento oportuno y coordinado de los pacientes oncológicos.

La Fundación Arturo López Pérez trabaja integralmente con los pacientes con cáncer y su seguimiento. No obstante, el seguimiento se ve afectado por diferentes reazones, una de estas es la toma de decisiones inoportunas provocadas por que los usuarios no cuentan con la información que ellos requieren al momento que ellos requieron (**arreglar**). La causa de esto es la limitada capacidad de integrarse entre ellos, afectadando la comunicacion y el acceso a la información.

Como solución, la FALP, comenzó con el desarrollo de modelos interoperables en salud, que permitan un asegurar el sguimiento de un paciente y su continuidad asistencial. Anteriormente, se realizaron dos guías de implementación y para este proyecto se planteo una tercera guía. Sin embargo, debido a algunas deficiencias técnicas en las guías anteriores, se realizará la corrección de estas guías, su validación contra el estándar y la tercera guía. Esta ultima guía mencionada, permitirá realizar resumenes clinicos interoperables,

En este documento se abordarán pricipalmente aspectos técnicos de la guia de imlementación, para mayor información no técnica, revisar el articulo realizado tambien durante la realización del trabajo. Lo puede encontrar en el repositorio de la biblioteca UV como "Diseño de guía de implementación  basada en estándar FHI para resumenes IPS para la fundación Arturo López Pérez" o comunicarse al correo esteban.fredes.pizarro@gmail.com. 

Los aspectos técnicos que se abordarán es: 

* Instalación de programas necesarios
* Creación de la guía
* Creación de artefactos
* Validación de la guía 
* Configuración final de la guía

La metodología aplica de la misma manera para las tres guías, por lo que, en general, no se harán especificaciones.

## Instalación de programas necesarios

Para comenzar a diseñar guías de implementación en FHIR se deben realziar algunos pasos previos. Se deben instalar diferentes programas que permitirán que los diferentes procesos necesarios para la realización de la guía. Es recomendable (para evitar errores posteriores) que todos los programas y configuraciones sean realizadas en modo administrador.

Programas que se deben instalar: 

* java jdk. link de descarga: https://www.oracle.com/cl/java/technologies/downloads/
* node js. link de descarga: https://nodejs.org/en
* ruby Jeckyll. link de descarga: https://jekyllrb.com/docs/installation/windows/ (seguir las instrucciones de instalación presentes en el link de descarga)
* Sushi FHIR: Para instalar sushi se deben seguir una serie de comandos en al consola de comandos de su dispositivo. Se detalla más adelante.
* Editor de código: para este proyecto se utilizó Visual Studio Code, debido a su facilidad para utilizar extensiones

### Algunos pasos extras

#### Variables de entorno
Se recomienda instalar java en las variables de entorno

1. Busque variables de entorno en el buscador de windows
2. 

#### Instalación de Sushi

Pasos para instalar sushi

1. Abrir cmd (buscar desde el buscador de windows "cmd")
2. Utilizar comando 

```
cd.. 
```

hasta llegar a la carpeta C:/

3. Utilizar el siguiente comando para instalar sushi

```
-g fsh-sushi
```

4. Verifique si ha sido intalado correctamente utilizando uno de los siguientes comandos

```
sushi help
sushi -v
```

#### Instalción de extensiones en Visual Studio Code

Esta etapa es válida si utiliza el editor de código VS Code, se desconoce el proceso para otros editores de código

1. Una vez instalado el VS Code, dirigirse a la pestaña de Extensiones en la barra izquierda. 
2. Buscar la extension "HL7 FHIR ShortHand" e instalarla
3. Buscar la extension "FHIR tools" e instalarla 

El uso de estas extensiones no es completamente obligatorio, pero se recomienda en gran medida, ya que facilita la creación de artefactos.



## Creación de la guía

## Creación de artefactos

## Validación de la guía 

## Configuración final de la guía 

