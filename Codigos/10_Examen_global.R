# Johany Rubi Paez Zamarripa
# 2000307
# 29/11/2023
# Examen global

# importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Repositorio_JRPZ_2/Met.ES.2/Codigos")
gramos <- read.csv("gramos.csv", header = TRUE)
head(gramos) # funcion head (sirve para ver primeros 6 datos)

# descriptivas ------------------------------------------------------------

# medidas de tendencia central media, mediana, rango
mean(gramos$Pino)
mean(gramos$Encino)
median(gramos$Pino)
median(gramos$Encino)
range(gramos$Pino)
range(gramos$Encino)

#medidas de dispersion desviacion estandar, varianza

sd(gramos$Pino)
sd(gramos$Encino)
var(gramos$Pino)
var(gramos$Encino)

# sumatoria ---------------------------------------------------------------

# sumatoria del peso elevada al cuadrado del pino es 9161.56
# sumatoria del peso del encino es 380.4

# grafica -----------------------------------------------------------------
boxplot(gramos$Pino,gramos$Encino)

# procedimientos ----------------------------------------------------------
# Aplicar la funcion t.test
t.test(gramos$Encino, mu = 17.46)
t.test(gramos$Encino, mu = 17.3)
t.test(gramos$Encino, mu = 16.2)
t.test(gramos$Encino, mu = 19.0)
t.test(gramos$Pino, mu = 12.68)
t.test(gramos$Pino, mu = 12.5)
t.test(gramos$Pino, mu = 11.0)
t.test(gramos$Pino, mu = 17.2)

# ejercicio 2 -------------------------------------------------------------

azufre<- c(15.8,22.7,26.8,19.1,18.5,14.4,8.3,25.9,26.4,9.8,
            22.7,15.2,23.0,29.6,21.9,10.5,17.3,6.2,18.0,22.9,
            24.6,19.4,12.3,15.9,11.2,14.7,20.5,26.6,20.1,17.0,
            22.3,27.5,23.9,17.5,11.0,20.4,16.2,20.8,13.3,18.1)

t.test(azufre)
# valor de p: 2.2e-16
# intervalos de confianza al 95%: 16.87912, 20. 53588
# grados de libertad: 39
# hipotesis aceptada: hipotesis alternativa



