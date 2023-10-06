# Johany Rubi Paez Zamarripa
# Matricula: 2000307
# Correlacion
# 02/10/2023
library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

# Hipotesis ---------------------------------------------------------------
# Hipotesis nula: La correlacion es igual a 0
# Hipotesis alternativa: La correlacion verdadera no es igual a 0

# Correlacion -------------------------------------------------------------
# ¿Cuál es el coeficiente de correlación (r)?
# cor.test(erupciones$eruptions,erupciones$waiting)
# t = 34.089, df = 270, p-value < 2.2e-16
# Es 0.9008112
# ¿Es significativa la correlación?
# Si, porque es mayor que 0.5

# Estadistica descriptiva -------------------------------------------------
mean(erupciones$eruptions) # 3.487783
mean(erupciones$waiting) # 70.89706
sd(erupciones$eruptions) # 1.141371
sd(erupciones$waiting) # 13.59497
var(erupciones$eruptions) # 1.302728
var(erupciones$waiting) # 184.8233
# Grafica -----------------------------------------------------------------
plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19)

# Conclusiones ------------------------------------------------------------
# La hipotesis es la alternativa, puesto que es significativo el valor, ya que es mayor de 0.5
# Obteniendo un valor de 0.9008112