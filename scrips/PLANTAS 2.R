#juanpablo

#importar
setwd("C:/Users/Usuario.PC13/Documents")
plantas <- read.csv("JuanPablo/vivero.csv" , header= T)

plantas$Tratamiento <- as.factor(plantas$Tratamiento)


# revisar datos -----------------------------------------------------------

shapiro.test(plantas$IE)

bartlett.test(plantas$IE ~plantas$Tratamiento)

# Independientes ----------------------------------------------------------

t.test (plantas$IE ~ plantas$Tratamiento, var.equal=T)

# t test simple -----------------------------------------------------------

mean(plantas$IE)
t.test(plantas$IE, mu =0.90)
t.test(plantas$IE, mu =0.85)

