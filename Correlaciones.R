
## Coeficiente de correlacion de Pearson

#Para datos con distribucion normal
#Area: Estadistica Parametrica
#Utilizamos la matriz "penguins.xlsx"

# 1.-Instalación de paqueterias

install.packages("readxl")

library(readxl)

# 2.-Exportacion de la matriz de datos

penguins<-read_excel("penguins.xlsx")

#2.1 Nombre de las columnas 

#Para saber el nombre de las columnas de la base de datos utilizo: colnames(BD)

colnames(penguins)

# 3.- Exploracion de la matriz 

# 3.1 Dimension de la matriz: Para saber la dimension de la matriz, utilizo: dim(BD)

dim(penguins)

#4.- Tipo de variables 
#Para saber el tipo de variables, utilizo: str(BD)

str(penguins)

#5.- Busca de datos perdidos 
#Para buscar datos perdidos, utilizo: anyNA(BD)

anyNA(penguins)

# Coeficiente de correclacion de Pearson

# 1.- Seleccionar las variables a correlacionar
#Utilizo codigo str(BD) Y (BD$especie)

str(penguins)

penguins$especie


# 2.- Seleccionar las filas 1 a la 61, que corresponden a la especie Adeli y sus respectivas variables cuantitativas.
#Su codigo es adeli<-penguins[1:61,4:7]

adeli<-penguins[1:61,4:7]

# 2.1 Visualizacion de la nueva matriz 

adeli

# 4.- Generación del gráfico de correlación

#El codigo es plot(adeli)

plot(adeli)

#5.- Cálculo de la correlación
#El codigo es cor(adeli)

cor(adeli)

# 6.- Organización visual de la tabla de correlaciones 

#6.1 Se va generar un nuevo objeto con el nombre de Pearson

pearson<-cor(adeli)

#6.2 Abrir libreria knitr

library(knitr)

#6.3 Se utiliza la función kable

kable(pearson)

## Coeficiente de correlación de Spearman

#Para datos con distribución NO normal 
#Área: Estadística NO paramétrica 
#Se utiliza la nueva matriz llamada marvel_dc.csv

# 1.- Exportación de la matriz 
#Codigo es marvel_dc<-read_excel("marvel_dc.xlsx")

marvel_dc<-read_excel("marvel_dc.xlsx")

# 2.- Explorar la matriz 

#2.1 Dimensión de la matriz 
#Se utiliza el codigo dim(BD)

dim(marvel_dc)

#2.2 En busca de datos perdidos 
#El cogido es anyNA(BD)

anyNA(marvel_dc)

#3.- Tipos de variables 
#El codigo es str(BD)

str(marvel_dc)

# 4.- Saber el nombre y posición de las variables que utilizamos 
#El codigo es colnames(BD)

colnames(marvel_dc)

# 5.- Seleccionamos las variables rate, minutos, budget y gross.worldwide, con marvel<-marvel_dc[,c(4,6,8,11)]

#*Nota: Elegimos columnas nuevas, debido a que la número 4 y la 6 son carácteres y necesitamos utilizar numérica.

#Ocuparemos las variables: rate, metascore, gross USA Y gross Worldwide

#El codigo es: marvel<-marvel_dc[,c(4,5,10,11)]

marvel<-marvel_dc[,c(4,5,10,11)]

#6.- Para verificar que el nombre de las variables sea correcta ocupamos: colnames(marvel)

colnames(marvel)

#7.- Realizar un plot de exploración con plot(marvel)

plot(marvel)

# 8.- Realizar la correlación de Spearman con este codigo: spearman<-cor(marvel, method = "spearman")

spearman<-cor(marvel, method = "spearman")

# 9.- Visualizar el objeto 

spearman

#9.1 Se abre la librería knitr
#El codigo es library(knitr)

library(knitr)

# 10.- Se utiliza la función kable para formar la tabla
#El codigo es kable(spearman)

kable(spearman)






