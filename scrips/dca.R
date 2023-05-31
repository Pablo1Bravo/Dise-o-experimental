#juan pablo bravo
#25/05/2023

#importar
setwd("C:/Users/Usuario.PC13/Documents")
plantas <- read.csv("JuanPablo/Plantas.csv" ,  header = T) 

plantas$trat <- as.factor(plantas$trat)

#grafica
boxplot(plantas$PG ~ plantas$trat,
col= "red" ,       
xlab = "Tratamientos Germinativos" ,
ylab = "% Germinacion")

#ordenar tratamientos
levels(plantas$trat)
plantas$trat <- factor(plantas$trat, levels =c("ctrl","EM","AGC", "RA", "H204"))
levels(plantas$trat)                          

#funcion tapply
tapply(plantas$PG, plantas$trat, mean)
tapply(plantas$PG, plantas$trat, var)

#ANOVA
plantas.aov <- (plantas$PG ~ plantas$trat)
summary(plantas.aov)

#prueba de tuckey
TukeyHSD(plantas.aov, conf.level = 0.95)
