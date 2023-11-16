#Muestreo aleatorio simple

#Generar numero aleatorios para una muestra de 61 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV. 
#Confiabilidad del 95% y 5% de error.
#x= del 1 al 73, que corresponde a la población.
#side= 61, que corresponde al tamaño de la muestra.

#En este link se calculó la muestra.
#<https://www.macorr.com/sample-size-calculator.htm>
  
# Ejemplo 1
sample(1:73, 61, replace=FALSE)

# Ejemplo 2
sample(1:73, 61, replace=FALSE)

# Ejemplo 3 cambie FALSE por TRUE
sample(1:73, 61, replace=TRUE)
```

##Ejercicio
#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

#En el link calcule la muestra del 83 alumnas y alumnos y me dio a 68.

#Muestra es de 68 alumnas/os.

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

sample(1:83, 68, replace=FALSE)


#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

#Forma larga: Copiar y pegar y ponerle las comas a cada número.

muestra<-c(13,22,25,68,4,28,43,15,5,38,50,27,33,40,56,18,11,31,66,71,67,
           45,73,48,36,23,82,65,42,26,62,14,49,39,2,79,78,59,54,8,7,3,58,
           41,17,75,77,6,20,16,51,10,32,44,55,7,76,83,34,69,12,53,46,81,
           19,30,1,9)


#Forma corta:
 
muestra2<-sample(1:83, 68, replace=FALSE)
muestra2

# Muestreo estratificado

#matricula de la escuela: 235
#Alumnos por grado
#Primero:46  Confiabilidad:41 
#Segundo:35  Confiabilidad:32
#Tercero:43  Confiabilidad:39
#Cuarto:38   Confiabilidad:35
#Quinto:41   Confiabilidad:37
#Sexto:32    Confiabilidad:30

#Se realizarán los chunk de cada grado con ayuda de la confiabilidad 
#y la muestra.

#Primer grado:
  
primero<-sample(1:46, 41, replace=FALSE)
primero

#Segundo grado:

segundo<-sample(1:35, 32, replace=FALSE)
segundo 


#Tercer grado:
  
tercero<-sample(1:43, 39, replace=FALSE)
tercero

#Cuarto grado:
  
cuarto<-sample(1:38, 35, replace=FALSE)
cuarto

#Quinto grado:
  
quinto<-sample(1:41, 37, replace=FALSE)
quinto

#Sexto grado:
  
sexto<-sample(1:32, 30, replace=FALSE)
sexto


