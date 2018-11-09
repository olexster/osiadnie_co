sr_okr<-function(xy){
  xy<-as.matrix(xy)
# oblicznie przyblizonego srodka 
  xy3<-xy[sample(1:nrow(s1),3,replace = F),-c(1,4)]
  a<-cbind(xy3*2,1) #-2ax-2bY+c
  b<-rowSums(xy^2)
  x<-solve(a,b)
  
  a<-cbind(xy*2,1) #-2ax-2bY+c
  A<-t(a)%*%a
  B<-t(a)%*%rowSums(xy^2) #-2ax-2bY+c=x^2+y^2
  # covA<-cov(A)^0.5 #macierz comawiancji mx[i]=(cov(A)[i,i])^0.5
  X<-solve(A,B)
  print(X)
  #   print(A)
  #   cat('\n')
  print(cov(A)^0.5)
  return(X[1:2])
}