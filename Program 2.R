#function to find the diff of two numbers
subt<-function(a,b){
  return(a-b)
}
#testing the subtraction function
result1<-subt(5,10)
result2<-subt(-3,7)
result3<-subt(0,0)
result4<-subt(3.5,2.1)
#printing the result of 2 numbers
cat("result of subtracting 5 and 10:", result1,"\n")
cat("result of subtracting -3 and 7:", result2,"\n")
cat("result of subtracting 0 and 0:", result3,"\n")
cat("result of subtracting 3.5 and 2.1:", result4,"\n")