# Marco Aurelio González Tagle
# 28/08/2023
# Matrícula: 096261

# Dos tratamientos Ctrl y Fert, un grupo de plantas
# Prueba de t independientes


# Importar ----------------------------------------------------------------
setwd("C:/Repositorio_GIT/Met_ES/Codigos")
vivero <- read.csv("IE.csv", header = T)


# Descriptivas ------------------------------------------------------------

# Usar la librería dplyr para seleccionar datos mediante 
# restricciones

library(dplyr)

Ctrl <- vivero %>% 
  filter(Tratamiento == "Ctrl")


Fert <- vivero %>% 
  filter(Tratamiento == "Fert")

mean(Ctrl$IE)
mean(Fert$IE)


descriptor <- vivero %>% 
  group_by(Tratamiento) %>% 
  summarise(
    n = n(),
    media = mean(IE),
    mediana = median(IE),
    sd = sd(IE),
    var = var(IE)
  )

# Grafica -----------------------------------------------------------------

boxplot(vivero$IE ~ vivero$Tratamiento,
        xlab = "Tratamiento",
        ylab = "Índice IE",
        main = "Vivero Marco",
        col = "green")


t.test(vivero$IE ~ vivero$Tratamiento, var.equal = T)
