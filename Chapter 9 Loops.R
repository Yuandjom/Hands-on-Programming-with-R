die <- c(1,2,3,4,5,6)
rolls <- expand.grid(die,die) # returns a data frame that contains every way to pair an element from first die vector to second die vector ?
rolls 
prob <- c("1" = 1/8 , "2" = 1/8 , "3" = 1/8 , "4" = 1/8 , "5" = 1/8 , "6" = 3/8 ) #lookup table 

prob

rolls$Var1 #look up the probabilities of rolling the values 
prob[rolls$Var1] # subset this table 

rolls$prob1 <- prob[rolls$Var1]
head(rolls,3)

rolls$prob2 <- prob[rolls$Var2]
rolls$prob <- rolls$prob1 * rolls$prob2
head(rolls,3)

rolls$value <- rolls$Var1 + rolls$Var2
rolls

sum(rolls$value * rolls$prob)

wheel <- c("DD","7","BBB","BB","B","C","0")
combos <- expand.grid(wheel,wheel,wheel, stringsAsFactors = FALSE) #the output will not be saved as factors
combos
?expand.grid

get_symbols <- function(){
  wheel<- c("DD","7","BBB","BB","B","C","0")
  sample(wheel, size = 3 ,replace = TRUE,
         prob = c(0.03,0.3,0.06,0.1,0.25,0.01,0.52))
}
prob <- c("DD" = 0.03 , "7" = 0.03 , "BBB" = 0.06, "BB" = 0.1 , "B" = 0.25 , "C" = 0.01 , "0" = 0.52)

combos$prob1 <- prob[combos$Var1]
combos$prob2 <- prob[combos$Var2]
combos$prob3 <- prob[combos$Var3]
head(combos,3)
combos$prob <- combos$prob1 * combos$prob2 *combos$prob3
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
sum(combos$prob)
head(combos,3)

long<- rep(c(-1,1), 5)
long
