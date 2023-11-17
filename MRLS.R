

## Modelo de regresion lineal simple 

# 1.- Instalación de paqueteria 

install.packages("readxl")

# 2.- Abrir libreria 


library(readxl)

# 3.- Exportación de la matriz 

penguins<-read_excel("penguins.xlsx")

# 4.- Exploración de la matriz 

# 4.1 Dimensión de la matriz
#Con el codigo: dim(BD)

dim(penguins)

# 4.2 Nombre de las columnas
# Con el codigo str(BD)

str(penguins)

# 4.3 Tipo de variables 
# Con el codigo: colnames(BD)

colnames(penguins)

# 4.4 En busca de datos perdidos 
# Con el codigo: anyNA(BD)

anyNA(penguins)

## Configuración de la matriz 
# 1.- Visualización de las columnas: especie, isla, género y año.

# 1.1- Convertir las variables categóticas a factores

penguins$especie<-factor(penguins$especie, 
                         levels=c("Adelie", "Gentoo", "Chinstrap"))

penguins$isla<-factor(penguins$isla, 
                      levels=c("Torgersen", "Biscoe", "Dream"))

penguins$genero<-factor(penguins$genero, 
                        levels=c("male", "female"))

penguins$año<-factor(penguins$año, 
                     levels=c("2007", "2008", "2009"))

# 1.2 Visualización del tipo de variables 
# Con el código str(BD)

str(penguins)

# 2.- Selección de variables 
# 2.1 Seleccionar una variable de la matriz original

penguins$especie

# 2.2 Seleccionar los datos con los que se van a trabajar 
# y las variables numéricas que se ocuparán.
# El codigo es: gentoo<-penguins[153:176, c(4,5,6,7)]

gentoo<-penguins[153:176, c(4,5,6,7)]

## Gráfico de dispersión 
# 1.- Mediante la función pairs se creará un gráfico de dispersión
# para visualizar la nueva matriz.

pairs(gentoo)

## Cálculo de la correlación de Pearson 
# 1.- Mediante la función cor se calcula la correlación de Pearson.
# Con el codigo cor(BD)

cor(gentoo)

## Gráfico de dispersión con linea de regresión

# 1.- Se instala la paqueteria ggplot2 

install.packages("ggplot2")

# 2.- Se abre la libreria 

library(ggplot2)

# 3.- Se generará el gráfico de dispersión 

# 3.1 El objeto se llamará MRL, se ocupan las variables masa corporal 
# y largo del pico.

MRL<-ggplot(gentoo, aes(x=masa_corporal_g, y=largo_pico_mm))+
  geom_point()+
  geom_smooth(method = "lm", formula=y~x, col="dodgerblue1")+
  ggtitle("Modelo de Regresión Lineal Simple")+
  xlab("Masa corporal (gr)")+
  ylab("Largo del pico (mm)")+
  theme_light()

# 3.2 Visualizar el objeto 

MRL

## Cálculo y representación de la recta por mínimos cuadrados 

# 1.- Con la funcion lm se encuentra el error y el intercepto.

regresion<-lm(gentoo$largo_pico_mm~gentoo$masa_corporal_g, 
              data=gentoo)

# 2.- Se visualiza el objeto

summary(regresion)

## Coeficiente de correlación de Pearson 

# 1.- Con la función sqrt se saca la raíz cuadrada del dato Multiple 
# R-squared para sacar el valor de la correlación de Pearson

r<-sqrt(0.5456)

# 2.- Visualización del objeto 

r









