# Correlación 
# 25/09/2023
# MAGT


# Importar ----------------------------------------------------------------

setwd("C:/Repositorio_GIT/Met_ES/Codigos")

cnpy <- read.csv("canopy.csv", header = T)
cnpy$Forest <- as.factor(cnpy$Forest)


# Gráfica -----------------------------------------------------------------

plot(cnpy$Cnpy, cnpy$LAI4)
# Asociación negativa entre Cnpy vs LAI4

plot(cnpy$Cnpy, cnpy$GLI)
# Asociación positiva Cnpy vs GLI (luz que llega al suelo)

plot(cnpy$LAI4, cnpy$GLI)
# Asociación negativa entre LAI4 vs GLI


# Personalizar gráfica
plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "Apertura dosel (%)",
     ylab = "Área Foliar",
     col = "lightgreen",
     pch = 19,
     main = "Bosque Escuela")

cor.test(cnpy$Cnpy, cnpy$LAI4)

# Anotar el r dentro de la gráfica
# Gráfica 1
plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "Apertura dosel (%)",
     ylab = "Área Foliar",
     col = "lightgreen",
     pch = 19,
     main = "Bosque Escuela")
text(25,1.2, "r = -0.83***")

# Gráfica 2
cor.test(cnpy$Cnpy, cnpy$GLI)
plot(cnpy$Cnpy, cnpy$GLI,
     xlab = "Apertura dosel (%)",
     ylab = "GLI",
     main = "Bosque Escuela",
     col  = "lightblue",
     pch  = 19)
text(35,30, "r = 0.54**")
# Asociación positiva Cnpy vs GLI (luz que llega al suelo)


# Gráfica 3
cor.test(cnpy$LAI4, cnpy$GLI)
plot(cnpy$LAI4, cnpy$GLI,
     xlab = "Área Foliar",
     ylab = "GLI",
     col  = "brown",
     pch  = 19)
text(1.1, 30, "r = -0.69***")
# Asociación negativa entre LAI4 vs GLI