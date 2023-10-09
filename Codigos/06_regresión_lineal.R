# MAGT
# Regresión lineal
# 09/10/2023

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración (min)",
     pch = 19)


erup.lm <- lm(erupciones$eruptions ~ erupciones$waiting)

erup.lm # Obtenemos el valor de alfa y beta

summary(erup.lm) # Obtener la significancia

erupciones$yprima <- -1.874016 + 0.075628* erupciones$waiting
erupciones$estimados <- erup.lm$fitted.values


plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración (min)",
     pch = 19)
# abline sirve para desplegar la línea de tendencia central
abline(erup.lm,
       col = "red")
range(erupciones$waiting)

# Determinar nuevos valores de x
erup <- c(80, 43, 45, 53, 61, 95)
y.pr <- -1.874016 + 0.075628*erup
erup
y.pr

# Aplicar la fórmula de manera individual
# alfa + beta * valor de x
-1.874016 + 0.075628* 80
-1.874016 + 0.075628* 43

# el rango de los valores de x son mi ventana de 
# predicción de yprima
# range(erupciones$waiting)