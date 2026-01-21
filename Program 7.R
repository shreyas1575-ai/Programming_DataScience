#creating a function to calculate the degree in F when c is given
calf<-function(c){
  return((c*(9/5))+32)
}
#testing the function
f1=calf(100)
#printing the result
cat("the temp in F when the input is 100 degree celcius is",f1,"\n")