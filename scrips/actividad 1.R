# Laboratorio 1
# Juan Pablo Bravo Gonzalez 
# gastos
celular <- 300
transporte <- 240
comestibles <-  1527
gimnasio <- 400
alquiler <-  1500
otros <-  1833

# gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833
## [1] 5800
5800 * 5
## [1] 29000
29000 * 2
## [1] 58000
gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
barplot(gastos,
        col = c("blue", "red", "pink", "orange", "purple", "red" ) ,
        main = "Gastos mensuales", 
        ylim = c(0,2000), xlab = "Rubros" , 
        ylab = "costos en MXP" ,
        names.arg = c("celular" , "transporte" , "comestibles" , "gimnasio" , "alquiler" , "otros" )
)
