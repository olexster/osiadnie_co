sr_okr<-function(xy){
  xy<-as.matrix(xy)
  a<-cbind(xy*2,1) #-2ax-2bY+c
  # A<-t(a)%*%a
  # B<-t(a)%*%rowSums(xy^2) #-2ax-2bY+c=x^2+y^2
  b<-rowSums(xy^2) #-2ax-2bY+c=x^2+y^2
  # covA<-cov(A)^0.5 #macierz comawiancji mx[i]=(cov(A)[i,i])^0.5
  X<-solve(a,b)
  print(x)
  #   print(A)
  #   cat('\n')
  print(cov(A)^0.5)
  return(X[1:2])
}