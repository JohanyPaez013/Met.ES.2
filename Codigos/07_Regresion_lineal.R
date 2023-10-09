# Johany Rubi Paez Zamarripa
# 09/10/2023
# Matricula: 2000307
# Regresion Lineal

erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")
plot(erupciones$, erupciones$eruptions,
     xlab ="tiempo de espera (min)",
     ylab = "duracion (min)",
     pch = 19)

# abline sirve para desplegar la linea de tendencia central 
abline(erup.lm,
       col = "purple")

erup.lm <- lm(erupciones$eruptions ~ erupciones$waiting)

erup.lm # Obtenemos el valor de alfa y beta

summary(erup.lm) # Obtener la significancia

erupciones$yprima <- ~1.874 + 0.075* erupciones$waiting
erupciones$estimados <- erup.lm$fitted.values

# Determinar nuevos valores de x
erup <- c(80,43,45,53,61,95)
y.pr <- ~1.874016 + 0.075625*erup
erup
y.pr

# Aplicar la formula de manera individual
# alfa + beta = valor de x
~1.874016 + 0.075628* 80
~1.874016 + 0.075628* 43

# El rango de los valores x son el ventana mi ventana de
# prediccion de yprima
# range (erupciones$waiting)



