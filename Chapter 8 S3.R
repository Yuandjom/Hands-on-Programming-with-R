#S3 system refers to a class system built into R 
#governs how R handles objects of different classes.
one_play <- play()
attributes(one_play)
attr(one_play,"symbols") <- c("B","O","B") #giving R object(one_play) an attribute
attributes(one_play)
attr(one_play,"symbols")

one_play

get_symbols <- function(){
  wheel<- c("DD","7","BBB","BB","B","C","0")
  sample(wheel, size = 3 ,replace = TRUE,
         prob = c(0.03,0.3,0.06,0.1,0.25,0.01,0.52))
}  
score<- function(symbols){
  same <- symbols[1]== symbols[2] && symbols[2] == symbols[3]
  bars <- symbols %in% c("B","BB","BBB")
  
  if(same){
    payouts<- c("DD"= 100,"7"=80,"BBB"=40,"BB"=25,
                "B"=10,"C"=10,"0"=0)
    prize <- unname(payouts[symbols[1]])
  } else if (all(bars)){
    prize <- 5 
    
  }else {
    cherries <- sum(symbols == "C")
    prize <- c(0,2,5)[cherries + 1]
  }
  
  diamonds <- sum(symbols == "DD")
  prize * 2 ^ diamonds
}
play <- function(){
  symbols <- get_symbols()
  prize <- score(symbols) #this creates an object for prize 
  attr(prize,"symbols") <- symbols
  prize 
}
play()
