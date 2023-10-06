# Johany Rubi Paez Zamarripa
# 05/09/2023
# Matricula: 2000307

# Importar ----------------------------------------------------------------

setwd("C:/Repositorio_GIT_DiegoFlores/Met.ES/Codigos")
Tarea<-read.csv("Tarea.csv",header = T)


# Descriptivas ------------------------------------------------------------

library(dplyr)

A<-Tarea %>% 
  filter(Tratamiento == "A")

B<-Tarea %>%
  filter(Tratamiento == "B")

mean(A$Diametro)
mean(B$Diametro)

Descriptor<-Tarea %>% 
  group_by(Tratamiento) %>% 
  summarise(
    n=n(),
    media=mean(Diametro),
    mediana=median(Diametro),
    sd=sd(Diametro),
    var=var(Diametro)
  )

Descriptor
# Gráfica -----------------------------------------------------------------

boxplot(Tarea$Diametro~Tarea$Tratamiento,
        xlab = "Tratamiento",
        ylab = "Diametro",
        main = "Árboles Johany",
        col = "gold")
t.test(Tarea$Diametro~Tarea$Tratamiento,var.equal=T)


# Conclusiones ------------------------------------------------------------

#En conclusión los árboles tratados con el fertilizante resultaron perjudicados, ya que,
#su diametro es menor que los árboles que no utilizaron fertilizante.