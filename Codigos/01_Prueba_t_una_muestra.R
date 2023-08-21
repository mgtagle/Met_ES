# Marco Aurelio González Tagle
# 21/08/2023
# Matrícula: 096261


# Importar datos ----------------------------------------------------------
# Función read.csv (sirve para importar datos csv a R)

mediciones <- read.csv("Codigos/mediciones.csv", header = TRUE)
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