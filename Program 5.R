#creating a function to find the area of rectangle
area<-function(a,b){
  return(a*b)
}
#testing the function with given inputs
area1<-area(5,10)
area2<-area(7,3)
area3<-area(0,8)
area4<-area(4.5,6.2)
#printing the result
cat("Area of reactangle with width 5 and height 10:",area1,"\n")
cat("Area of reactangle with width 7 and height 3:",area2,"\n")
cat("Area of reactangle with width 0 and height 8:",area3,"\n")
cat("Area of reactangle with width 4.5 and height 6.2:",area4,"\n")
