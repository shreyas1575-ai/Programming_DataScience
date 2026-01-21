#funtion to divide two numbers
div<-function(a,b){
  return(a/b)
}
#testing the div function
result1<-div(5,10)
result2<-div(-3,7)
result3<-div(0,0)
result4<-div(3.5,2.1)
#printing the result
cat("result of div 5 and 10:", result1,"\n")
cat("result of div -3 and 7:", result2,"\n")
cat("result of div 0 and 0:", result3,"\n")
cat("result of div 3.5 and 2.1:", result4,"\n")

