
#Combinaciones y permutaciones 

#Instalación de paqueteria

# 1.- Instalar paqueteria **gtools**

install.packages("gtools")

# 2.- Abrir la libreria 

library(gtools)

#Combinaciones 

# 1.- Ejemplo: Tenemos 100 estudiantes y se quieren agrupar 
# en equipos de 2 integrantes cada uno. 

# N = 100 - Número de elementos 

# n = 2 - Grupos de 2 en 2 

N <- 100 
n <- 2 

# 2. Determinar que vayan los números con ID número 
# consecutivo. En esta ocasión, el objeto se llamará 
# "alumnos". 

alumnos <- c(1:N)

## Cómo sacar las combianciones 

# 1. Nombrar un objeto llamado "combinaciones", 
# utilizando **N**, **n** y **alumnos** y la 
# función **combinations**

combinaciones <- combinations(N,n,alumnos)

# 2. Las primeras combinaciones 

head(combinaciones)

# 3. Las últimas combinaciones 

tail(combinaciones)

# 4. ¿Cuántas combinaciones tenemos en total?

nrow(combinaciones)

# 5. Utilizando la formula 
# **factorial(N) / (factorial (n) * (factorial (N-n)))**
# debe salir el mismo número que en el codigo anterior

factorial(N) / (factorial(n) * (factorial(N-n)))



#Combinaciones **MI EJERCICIO** 

# 1.- Ejemplo: Tenemos 80 estudiantes y se quieren agrupar 
# en equipos de 5 integrantes cada uno. 

# N = 80 - Número de elementos 

# n = 5 - Grupos de 2 en 2 

N <- 80 
n <- 3

# 2. Determinar que vayan los números con ID número 
# consecutivo. En esta ocasión, el objeto se llamará 
# "alumnos". 

alumnos <- c(1:N)

## Cómo sacar las combianciones 

# 1. Nombrar un objeto llamado "combinaciones2", 
# utilizando **N**, **n** y **alumnos** y la función
#**combinations**

combinaciones <- combinations(N, n, alumnos)

# 2. Las primeras combinaciones 

head(combinaciones)

# 3. Las últimas combinaciones 

tail(combinaciones)

# 4. ¿Cuántas combinaciones tenemos en total?

nrow(combinaciones)

# 5. Utilizando la formula 
# **factorial(N) / (factorial (n) * (factorial (N-n)))**
#debe salir el mismo número que en el codigo anterior

factorial(N) / (factorial(n) * (factorial(N-n)))


#Permutaciones

# 1. Ejemplo: Tenemos 100 estudiantes y se quieren agrupar 
# en equipos de 2 integrantes cada uno.

# N = 100 - Número de elementos 
# n = 2 - Grupos de 2 en 2 

N <- 100
n <- 2 

# 2. Determinar que vayan los números con ID número 
# consecutivo. En esta ocasión, el objeto se llamará 
# "alumnos". 

alumnos <- c(1:N)

## Sacar las permutaciones 

# 1. Nombrar un objeto llamado "permutaciones" utilizando 
# utilizando **N**, **n** y **alumnos** y la función
#**permutations**

permutaciones <- permutations(N,n,alumnos)

# 2. Las primeras combinaciones 

head(permutaciones)

# 3. Las últimas combinaciones 

tail(permutaciones)

# 4. ¿Cuántas permutaciones tenemos en total?

nrow(permutaciones)

# 5. Utilizando la formula 
# **factorial(N) / (factorial (N-n)))**,
# debe salir el mismo número que en el codigo anterior

factorial(N) / factorial(N-n)


#Permutaciones MI EJERCICIO

# 1. Ejemplo: Tenemos 100 estudiantes y se quieren agrupar 
# en equipos de 2 integrantes cada uno.

# N = 100 - Número de elementos 
# n = 2 - Grupos de 2 en 2 

N <- 80
n <- 3 

# 2. Determinar que vayan los números con ID número 
# consecutivo. En esta ocasión, el objeto se llamará 
# "alumnos". 

alumnos <- c(1:N)

## Sacar las permutaciones 

# 1. Nombrar un objeto llamado "permutaciones" utilizando 
# utilizando **N**, **n** y **alumnos** y la función
#**permutations**

permutaciones <- permutations(N,n,alumnos)

# 2. Las primeras combinaciones 

head(permutaciones)

# 3. Las últimas combinaciones 

tail(permutaciones)

# 4. ¿Cuántas permutaciones tenemos en total?

nrow(permutaciones)

# 5. Utilizando la formula 
# **factorial(N) / (factorial (N-n)))**,
# debe salir el mismo número que en el codigo anterior

factorial(N) / factorial(N-n)








