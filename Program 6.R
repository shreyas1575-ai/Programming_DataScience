#creating a function to calculate the bmi when the weight and the height is given
bmi<-function(w,h){
  return(w/h^2)
}
#testing the bmi function
bmi1<-bmi(74,1.8)
bmi2<-bmi(98,1.82)
#printing the result of the bmi function
cat("The bmi of the person whose weight is 74 kg and the height is 1.8m:",bmi1,"\n")
cat("The bmi of the person whose weight is 98 kg and the height is 1.82m:",bmi2,"\n")
