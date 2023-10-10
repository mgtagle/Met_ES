# MAGT
# ANOVA
# 10/10/2023

# Importar datos 

library(repmis)
DAP <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")
DAP$Paraje <- as.factor(DAP$Paraje)
DAP$SP <- as.factor(DAP$SP)
# Determinar estadísticas descriptivas

boxplot(DAP$EDAD ~ DAP$Paraje)
boxplot(DAP$DAP ~ DAP$Paraje)


tapply(DAP$EDAD, DAP$Paraje, mean)
tapply(DAP$EDAD, DAP$Paraje, var)

# normalidad revisar

shapiro.test(DAP$DAP)
hist(DAP$DAP)
# Los datos del DAP no son normales

bartlett.test(DAP$DAP ~ DAP$Paraje)
# la varianza de los tratamientos son iguales

# Transformar DAP para cumplir normalidad
DAP$raiz <- sqrt(DAP$DAP)
hist(DAP$raiz) 

# probar normailidad a los datos transformrados (raiz cuadrada)
shapiro.test(DAP$raiz)
# Los datos son ahora normales

# Probar homogeneidad de varianzas de los datos transformados
bartlett.test(DAP$raiz ~ DAP$Paraje)


dap.aov <- aov(DAP$raiz ~ DAP$Paraje)
summary(dap.aov)
boxplot(DAP$raiz ~ DAP$Paraje)

# Encontrar las diferencias significativas
TukeyHSD(dap.aov)
# Graficar las diferencias del anova
plot(TukeyHSD(dap.aov))
