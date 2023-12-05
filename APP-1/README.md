# Proyecto Final EC
### AUTHOR: Equipo Gabriela, Antonio, Erwin e Ivan
#### DATE: 12-DIc-23

La presente APP de Shiny que generamos es un Dashboard sobre educación. 

### Motivación

La educación representa la base del desarrollo social y económico de los individuos. Durante la educación básica, que abarca la educación primaria y secundaria, los estudiantes no solo adquieren conocimientos fundamentales en áreas como matemáticas, ciencias y lenguaje, sino que también desarrollan habilidades esenciales para la vida diaria. 
La educación básica en México es crucial para reducir la desigualdad y promover la inclusión social. A través de una educación accesible y de calidad, se brinda a niños y jóvenes de diversos orígenes la oportunidad de mejorar su calidad de vida y la de sus comunidades. Esto es especialmente importante en un país con una gran diversidad cultural y desigualdades socioeconómicas como México. 

### Descripción de la APP
La base con la que contamos es una descripción detallada por municipio para 20 variables. De estas se seleccionó un subgrupo y se generaron estadísticas y gráficas varias para mostrar las principales caracteristicas de los municipios.

La APP consta de 3 pestañas

** Mapa de la educación en México** 
En esta pantalla podemos observar los valores de diferentes variables para cada municipio y una tabla que permite observar y ordenar los diferentes valores de una variable. El mapa se genera por medio de un archivo shp. Los archivos SHP son una parte crucial del formato de archivo shapefile, que es ampliamente utilizado en el ámbito de los Sistemas de Información Geográfica (SIG). 

** Modelo Lineal** 
Permite consultar cual seria el número de años promedio de educación en un municipio, de acuerdo con el porcentaje de población indígena que lo habita. El modelo de Mínimos Cuadrados Ordinarios (MCO), también conocido como regresión lineal ordinaria, es un método estadístico utilizado para estimar la relación entre variables. Este método es ampliamente utilizado en estadísticas, economía, ingeniería y ciencias sociales para modelar relaciones lineales entre variables.  

** Gráficas de barras ** 
Permite comparar las variables a nivel estado y de acuerdo al porcentaje de población indigena.

### Despliegue de la aplicación

Para correr esta aplicación sugerimos:

1. Clonar el repositorio
2. Descargar en un zip todo el contenido del repositorio y guardarlo en una carpeta de su preferencia.
3. Abrir la Terminal posicionándose en la carpeta APP-1
4. Correr el archivo de R.script para generar los datos de inicio.
5. Correr la instrucción "docker-compose up --build"
6. Ya podrá tener acceso a la APP.

