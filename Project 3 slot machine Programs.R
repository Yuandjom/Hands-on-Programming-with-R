get_symbols <- function(){
  wheel<- c("DD","7","BBB","BB","B","C","0")
  sample(wheel, size = 3 ,replace = TRUE,
        prob = c(0.03,0.3,0.06,0.1,0.25,0.01,0.52))
  
}
get_symbols()
#remember sample is sample(x,size = ,replace)***
score(c("DD","DD","DD"))

#a- trunc(a) is a convenient way to return the decimal part of a as it takes the integer
#eg a = 3.14 , a - trunc(a) == 3
symbols <- c(7,7,7)
symbols[1]== symbols[2] && symbols[2] == symbols[3]
all(symbols == symbols[1])

symbols <- c("BBB","BB","B")
all(symbols %in% c("B","BB","BBB"))
same <- symbols[1]==symbols[2] && symbols[2]==symbols[3]
bars = symbols %in% c("B","BB","BBB")
#lookup table 
payouts<- c("DD"= 100,"7"=80,"BBB"=40,"BB"=25,
            "B"=10,"C"=10,"0"=0)
payouts
unname(payouts["DD"])
payouts[symbols[1]]

#MAIN PROGRAM
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
  print(symbols)
  score(symbols)
}
play()
