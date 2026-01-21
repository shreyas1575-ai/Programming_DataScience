#funtion to multiply two numbers
mul<-function(a,b){
  return(a*b)
}
#testing the mul function
result1<-mul(5,10)
result2<-mul(-3,7)
result3<-mul(0,0)
result4<-mul(3.5,2.1)
#printing the result
cat("result of mul 5 and 10:", result1,"\n")
cat("result of mul -3 and 7:", result2,"\n")
cat("result of mul 0 and 0:", result3,"\n")
cat("result of mul 3.5 and 2.1:", result4,"\n")
