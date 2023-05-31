#t-test dependientes
#importar
setwd("C:/Users/Usuario.PC13/Documents")
semillas <- read.csv("JuanPablo/Scripts/mainproduccion.csv", header = T)
#kgsem
semillas$Kgsem <- as.factor(semillas$Kgsem)

#tiempo
semillas$Tiempo <- as.factor(semillas$Tiempo)

#grafica boxplot
boxplot(semillas$Tiempo , semillas$Kgsem)
