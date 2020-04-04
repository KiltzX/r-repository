Fibbonaci <- function(){
n1 <- 0
n2 <- 1
n3 <- 0

while  (n3 <= 200){
    n3  <- n2  + n1
    n1 <- n2
    n2 <- n3
    print(n3)
}
}
#---------------------#

#Ler um CSV e  Criar um GRAFICO Barra

LerCsv <- function(){
    data <- read.csv("valor.csv")
    y <- data.frame(x = max(data$valor), y = min(data$valor))
    names(y) <- c("Valor Maior","Valor menor")
    barplot(height = as.numeric(y[1,]), names.arg = names(y))
}

Covid19Tracker <- function(){
    data <- read.csv("covid.csv")
    total <- (data$ativos + data$recover + data$fatal)

  
   frame <- data.frame(x = data$ativos,y = data$recover, z= data$fata, i= total)
    names(frame) <- c("Casos Ativos","Casos Curados","Casos Fatais","Total de atingidos")

    barplot(height = as.numeric(frame[1,]),main="Casos do COVID-19 2020 (Mil Aproximadamente)", names.arg = names(frame))


}

#Tire o comentario da função que deseja executar

#Fibbonaci()
#LerCsv()
Covid19Tracker()