# function to get text input and return it
gettxt <- function(){
  text <- readline(prompt = "Enter text: ")
  return(text)
}

# testing the function
t1 <- gettxt()
cat("User entered text:", t1, "\n")

t2 <- gettxt()
cat("User entered text:", t2, "\n")
