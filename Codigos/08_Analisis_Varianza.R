# Johany Rubi Paez Zamarripa
# 10/10/2023
# Matricula: 2000307
# Analisis de Varianza

# Importar datos 

library (repmis)
DAP <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")
DAP$Paraje <- as.factor(DAP$Paraje)
DAP$SP <- as.factor(DAP$SP)

# Determinar estadisticas descriptivas

boxplot(DAP$EDAD ~ DAP$Paraje)
boxplot(DAP$DAP ~ DAP$Paraje)

tapply(DAP$EDAD, DAP$Paraje, mean)
tapply(DAP$EDAD, DAP$Paraje, var)

# Normalidad revisar
shapiro.test(DAP$DAP)
hist(DAP$DAP)
# Los datos del DAP no son normales

bartlett.test(DAP$DAP ~ DAP$Paraje)
# La varianza de los tratamientos son iguales

# Transformar DAP para cumplir normalidad
DAP$raiz <- sqrt(DAP$DAP)
hist(DAP$raiz)

# Probar normalidad de los datos trasformados (raiz cuadrada)
shapiro.test(DAP$raiz)
# Los datos son ahora normales

# Probar hmogeneidad de varianzas de los datos transformados
bartlett.test(DAP$raiz ~ DAP$Paraje)

dap.aov <- aov(DAP$raiz ~ DAP$Paraje)
summary(dap.aov)
boxplot(DAP$raiz ~ DAP$Paraje)

# Encontrar las diferencias sirgnificativas
TukeyHSD(dap.aov)

# Graficar las diferencias del ANOVA
plot(TukeyHSD(dap.aov))
