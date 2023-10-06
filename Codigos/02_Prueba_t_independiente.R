# Johany Rubi Paez Zamarripa
# 28/08/2023
# Matricula: 2000307

# Dos tratamientos Ctrl y Fert, un grupo de plantas
# Prueba de t independientes


# Importar ----------------------------------------------------------------
setwd("C:/"Repositorio_JRPZ_2/Met.ES.2/codigos")
vivero <- read.csv("IE.csv",header = T)


# Descriptivas ------------------------------------------------------------

# Usar la libreria dplyr para seleccionar datos mediante restricciones

library(dplyr)

Ctrl<-vivero %>% 
  filter(Tratamiento == "Ctrl")

Fert<-vivero %>%
  filter(Tratamiento == "Fert")

mean(Ctrl$IE)
mean(Fert$IE)

Descriptor<-vivero %>% 
  group_by(Tratamiento) %>% 
  summarise(
    n=n(),
    media=mean(IE),
    mediana=median(IE),
    sd=sd(IE),
    var=var(IE)
  )

Descriptor
# Grafica -----------------------------------------------------------------

boxplot(vivero$IE~vivero$Tratamiento,
        xlab = "Tratamiento", 
        ylab = "Índice IE",
        main = "Vivero Johany",
        col = "green")
t.test(vivero$IE~vivero$Tratamiento,var.equal=T)
