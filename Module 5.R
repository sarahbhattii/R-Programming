#Module 5 Doing Math

A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)

#Print
A
B

#Find determinants
det(A)
det(B)

inverse.matrix <- function(a){
  b <- (t(a)) / det(a)
  print(b)
}

inverse.matrix(A)


inverse.matrix(B)

