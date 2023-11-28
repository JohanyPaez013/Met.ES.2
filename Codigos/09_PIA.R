# Johany Rubi Paez Zamarripa
# 28/11/2023
# Matricula: 2000307
# Producto Integrador de Aprendizaje


# importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Repositorio_JRPZ_2/Met.ES.2/Codigos")
Pesos<- read.csv("Pesos.csv", header = TRUE)
head(Pesos) 

# descriptivas ------------------------------------------------------------

# medidas de tendencia central media, mediana, rango
mean(Pesos$Peso) # 974.2766
median(Pesos$Peso) # 1050
range(Pesos$Peso) # 450 1400

#medidas de dispersion desviacion estandar, varianza
var(Pesos$Peso) # 68667.64
sd(Pesos$Peso) # 262.0451

# graficas ----------------------------------------------------------------

boxplot(Pesos$Peso)

# hipotesis ---------------------------------------------------------------

Peso(x mean) 974.2766 Peso(x median) 1050
# mediante los datos que se obtuvieron, se concluye que es una
# hipotesis alternativa ya que es mayor de 0.5

# aplicar el t.test -------------------------------------------------------

t.test(Pesos$Peso, mu = 11)
t.test(Pesos$Peso, mu = 10.5)
t.test(Pesos$Peso, mu = 10.6)
t.test(Pesos$Peso, mu = 10.55)

# replicabilidad ----------------------------------------------------------

# Guardar la prueba de t en un objeto llamado "prueba"
prueba <- t.test(Pesos$Peso, mu = 11)
# Conocer los grados de libertad
prueba$parameter

# Conocer el p-value
prueba$p.value

# Conocer intervalos de confianza
prueba$conf.int

# correlacion -------------------------------------------------------------

plot(Pesos$Peso, Pesos$Peso, xlab = "Peso",
     ylab = "Peso", pch = 19)

# regresion lineal --------------------------------------------------------
abline(Pesos.lm)

Pesos.lm <- lm(Peso$Sexo ~ Peso$Sexo)

Pesos.lm 

summary(Pesos.lm) 

Pesos$Peso <- Pesos$Peso
Pesos$Peso <- Peso.lm$fitted.values

# analisis de varianza ----------------------------------------------------
boxplot(Pesos$Peso ~ Pesos$Sexo)

tapply(Pesos$Peso, Pesos$Sexo, mean)
tapply(Pesos$Peso, Pesos$Sexo, var)

# normalidad revisar
shapiro.test(Pesos$Peso)
hist(Pesos$Peso)

bartlett.test(Pesos$Peso ~ Pesos$Sexo)

Pesos$Peso <- sqrt(Pesos$Peso)
hist(Pesos$Peso)

shapiro.test(Pesos$Peso)

# probar homogeneidad de varianzas de los datos trasformados
bartlett.test(Pesos$Peso ~ Pesos$Sexo)

dap.aov <- aov(Pesos$Peso ~ Pesos$Sexo)

summary(dap.aov)

boxplot(Pesos$Peso ~ Pesos$Sexo)
# encontrar las diferencias significativas
TukeyHSD(dap.aov)

# graficar las diferencias del ANOVA
plot(TukeyHSD(dap.aov))

















