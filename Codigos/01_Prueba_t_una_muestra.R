# Johany Rubi Paez Zamarripa
# 21/08/2023
# 2000307

# importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Repositorio_JRPZ/Met_ES/Codigos")
mediciones <- read.csv("mediciones.csv", header = TRUE)
head(mediciones) # funcion head (sirve para ver primeros 6 datos)

# descriptivas ------------------------------------------------------------

# medidas de tendencia central media, mediana, rango
mean (mediciones$altura)
median (mediciones$altura)
range (mediciones$altura)
fivenum (mediciones$altura)

#medidas de dispersion desviacion estandar, varianza

sd(mediciones$altura)
var(mediciones$altura)


# graficas ----------------------------------------------------------------
boxplot(mediciones$altura,
        col= "black",
        ylab= "altura (cm)" ,
        main= "sitio 1" ,
        ylim= c (6,14))

# Hipotesis ---------------------------------------------------------------
# xobs = 10.17 vs xteo = 11
# Plantas de cedro deben alcanzar una altura de 11 cm en un año.
# de acuerdo a los dichos de viveristas.


# Procedimientos ----------------------------------------------------------
# Aplicar la funcion t.test
t.test(mediciones$altura, mu = 11)
t.test(mediciones$altura, mu = 10.5)
t.test(mediciones$altura, mu = 10.6)
t.test(mediciones$altura, mu = 10.55)


# Replicabilidad ----------------------------------------------------------
# Guardar la prueba de t en un objeto llamado "prueba"
prueba <- t.test(mediciones$altura, mu = 11)

# Conocer los grados de libertad
prueba$parameter

# Conocer el p-value
prueba$p.value

# Conocer intervalos de confianza
prueba$conf.int
