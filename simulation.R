df <- deriv(z ~ sin(x^2/2-y^2/4)*cos(2*x-exp(y)),c('x','y'),func=TRUE,hessian=TRUE)

f3 <- function(x){
  dfx <- df(x[1],x[2])
  f <- dfx[1]
  gradf <- attr(dfx,'gradient')[1,]
  hessianf <- attr(dfx,'hessian')[1,,]
  return(list(f,gradf,hessianf))
}