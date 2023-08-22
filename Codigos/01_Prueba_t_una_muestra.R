# Marco Aurelio González Tagle
# 21/08/2023
# Matrícula: 096261


# Importar datos ----------------------------------------------------------
# Función read.csv (sirve para importar datos csv a R)
setwd("C:/Repositorio_GIT/Met_ES/Codigos")
mediciones <- read.csv("mediciones.csv", header = TRUE)
head(mediciones) # función head (sirve para ver primeros 6 datos)

# Descriptivas ------------------------------------------------------------
# medidas de tendencia central: media, mediana, rango 

mean(mediciones$altura)
median(mediciones$altura)
range(mediciones$altura)
fivenum(mediciones$altura)

# medias de dispersión: desviación estándar, varianza

sd(mediciones$altura)
var(mediciones$altura)


# Gráficas ----------------------------------------------------------------

boxplot(mediciones$altura,
        col = "lightblue",
        ylab = "Altura (cm)",
        main = "Sitio 1",
        ylim = c(6,14))


# Hipotesis ---------------------------------------------------------------

# xobs = 10.17 vs xteo = 11
# Plantas de cedro deben alcanzar una altura de 11 cm en un año
# de acuerdo a los dichos de viveristas.
# El valor de alfa referencia es 0.05

# Procedimiento -----------------------------------------------------------
# Aplicar la función t.test

t.test(mediciones$altura, mu = 11)


# Replicabilidad ----------------------------------------------------------

# Guardar la prueba de t en un objeto llamado "prueba"
prueba <- t.test(mediciones$altura, mu = 11)

# Conocer los grados de libertad
prueba$parameter

# Conocer el p-value
prueba$p.value
# Se acepta la  H1 
# Conocer intervalos de confianza
prueba$conf.int
