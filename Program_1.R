#function to add 2 numbers
add<-function(a,b){
  return(a+b)
}
#testing the function
result1<-add(5,10)
result2<-add(-3,7)
result3<-add(0,0)
result4<-add(3.5,2.1)
#print the results of addition of 2 numbers
cat("result of adding 5 and 10: ",result1,"\n")
cat("result of adding -3 and 7: ",result2,"\n")
cat("result of adding 0 and 0: ",result3,"\n")
cat("result of adding 3.5 and 2.1: ",result4,"\n")