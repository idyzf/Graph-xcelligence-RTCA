library(RTCA)
library(openxlsx)

rm(list=ls())

###CORES FIXAS A172 -> MEDIUM BLUE
##HCB -> VERDE
##U87MG -> VERMELHO
## NTC -> LIGHTSKYBLUE
## CLONE -> LIGHTSEAGREEN
ofile <-  read.xlsx("xcelligence para grafico.xlsx", sheet=2)
ofile<- ofile[,-2]
plot(ofile$"Time(Hour)" , ofile$A172_DMSO,  data=ofile, type= "l",col="mediumblue", lty=1:4, xlab="time point", ylab="Cell Index", lwd = 5, ylim = c(-1, 6)
     , main = "RTCA before treatment")
lines(ofile$"Time(Hour)" , ofile$A172_TMZ,  data=ofile, col="mediumblue", pch="*", type= "l",  lwd = 5, lty=3)
lines(ofile$"Time(Hour)" , ofile$NTC_DMSO,  data=ofile, col="lightskyblue", pch="*", type= "l",  lwd = 5)
lines(ofile$"Time(Hour)" , ofile$NTC_TMZ,  data=ofile, col="lightskyblue", pch="*", type= "l",  lwd = 5, lty=3)
lines(ofile$"Time(Hour)" , ofile$Clone_DMSO,  data=ofile, col="lightseagreen", pch="*", type= "l",  lwd = 5)
lines(ofile$"Time(Hour)" , ofile$Clone_TMZ,  data=ofile, col="lightseagreen", pch="*", type= "l",  lwd = 5, lty=3)
legend(0, 6, legend=c("A172", "A172", "NTC", "NTC", "Clone", "Clone"),
       col=c("blue", "blue", "lightskyblue", "lightskyblue", "lightseagreen", "lightseagreen"), lty=1:2, cex=0.8)

