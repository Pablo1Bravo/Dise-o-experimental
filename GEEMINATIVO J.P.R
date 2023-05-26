#Juan Pablo Bravo Gonzalez

#25 de Mayo

#Importar Datos

setwd("C:/Users/Usuario.PC13/Documents")
plantas <- read.csv("JuanPablo/Plantas.csv" , header = TRUE)
plantas$trat <- as.factor(plantas$trat)

#Grafica

boxplot(plantas$PG ~ plantas$trat,
        col= "red",
        xlab = "TRATAMIENTOS GERMINATIVOS" ,
        ylab = "% GERMINACION")

#Ordenar Tratamientos
levels(plantas$trat)
plantas$trat <- factor(plantas$trat, levels = c("ctrl", "EM", "RA", "AGC", "H204" ))
levels(plantas$trat)

tapply(plantas$PG, plantas$trat, mean)
tapply(plantas$PG, plantas$trat, var)

#Anova

plantas.aov <- aov(plantas$PG ~ plantas$trat)
summary(plantas.aov)

#Prueba de Tuckey
TukeyHSD(plantas.aov, conf.level = 0.95)

##Entre EM- ctrl diferencia de 4% y si hay diferencia
##Entre RA- ctrl diferencia de 5% y si hay diferencia
##Entre AGC- ctrl diferencia de 3.5% y si hay diferencia

plot(TukeyHSD(plantas.aov), las= 1, col="blue")

#Agregar letras de diferencia

boxplot(plantas$PG ~ plantas$trat,
        col= "red",
        xlab = "TRATAMIENTO GERMINATIVO",
        ylab= "% GERMINACION",
        ylim= c(0,10))
text(1,4.2, "A", col= "green")
text(2,8.3, "B", col= "orange")
text(3,9.4, "B", col= "orange")
text(4,7.4, "B", col= "orange")
text(5,3.3, "A", col= "green")