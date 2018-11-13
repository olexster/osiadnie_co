sr_okr<-function(xy){
  xy<-as.matrix(xy)
  # oblicznie przyblizonego srodka 
  xy3<-xy[sample(1:nrow(xy),3,replace = F),]
  a<-cbind(xy3*2,1) #-2ax-2bY+c
  b<-rowSums(xy3^2)
  x<-solve(a,b)
  # wyzerowanie ukladu w przyblizonym srodku okregu
  xy0<-t(apply(xy,1,FUN =  function(a){ a-x[1:2]}))
  # oblicznie srodka okregu
  a<-cbind(xy0*2,1) #-2ax-2bY+c
  A<-t(a)%*%a
  B<-t(a)%*%rowSums(xy0^2) #-2ax-2bY+c=x^2+y^2
  # covA<-cov(A)^0.5 #macierz comawiancji mx[i]=(cov(A)[i,i])^0.5
  X<-solve(A,B)+x
  #   print(A)
  #   cat('\n')
  print(cov(A)^0.5)
  return(X[1:2])
}
