# Johany Rubi Paez Zamarripa
# 05/09/2023
# Matricula: 2000307

# Importar ----------------------------------------------------------------

setwd("C:/Repositorio_JRPZ_2/Met.ES.2/Codigos")
canopy<-read.csv("canopy.csv",header = T)
canopy$Forest<-as.factor(canopy$Forest)



# Gráfica -----------------------------------------------------------------

plot(canopy$Cnpy, canopy$GLI)
#Asociacion positiva

plot(canopy$Cnpy, canopy$LAI4)
#Asociacion negativa

plot(canopy$LAI4, canopy$GLI)
#Asociacion negativa


# Personalizar ------------------------------------------------------------

plot(canopy$Cnpy, canopy$LAI4, xlab = "Apertura dosel", ylab = "Area foliar",
     col="blue", pch=19)
cor.test(canopy$Cnpy, canopy$LAI4)

text(25,1.2, "r=-0.833416")

plot(canopy$Cnpy, canopy$GLI, xlab = "Apertura dosel", ylab = "Area foliar",
     col="red", pch=19)
cor.test(canopy$Cnpy, canopy$GLI)

text(25,1.2, "r=0.5457512")

plot(canopy$LAI4, canopy$GLI, xlab = "Apertura dosel", ylab = "Area foliar",
     col="yellow", pch=19)
cor.test(canopy$LAI4, canopy$GLI)

text(25,1.2, "r=-0.6894101")