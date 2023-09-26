# Conjunto de datos para correlación
# MAGT
# 26/09/2023

# Crear la base de datos

x <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y <- c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 
       4.26, 10.84, 4.82, 5.68)
# Crear un data.frame con las variables x and y

d1 <- data.frame(x,y)
d1

# Estadísticas descriptivas

mean(d1$x); var(d1$x)
mean(d1$y); var(d1$y)

# Aplicar correlación

cor.test(d1$x, d1$y)

# Gráfica

plot(d1$x, d1$y,
     pch=19,
     xlab = "Valor de x",
     ylab = "Valor de y")