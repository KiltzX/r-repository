#Fibbonaci

n1 <- 0
n2 <- 1
n3 <- 0

while  (n3 <= 200){
    n3  <- n2  + n1
    n1 <- n2
    n2 <- n3
    print(n3)
}