#Minimos cuadrados ordinarios
OLS <- function(var1, var2, var3) {
X <- as.matrix(cbind(int=1, var2))
Y <- as.vector(var1) 
##(X'X)-1
xx <- solve(t(X)%*%X)
##X'Y
xy <- t(X)%*%Y
##B estimado
b <- as.vector(xx%*%xy)
return(b)
}



