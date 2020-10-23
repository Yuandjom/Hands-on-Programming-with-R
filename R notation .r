head(deck)
deck[1,1]
deck[1,c(1,2,3)]

deck[1,]

deck[1,c(T ,T,F)]

deal <- function(cards){
  cards[1,]
}

deal(deck)

random <- sample(1:52, size= 52)

deck4 = deck[random,]
deck4

shuffle <- function(cards){
  random <- sample(1:52,size=52) #varible that stores what it can do 
  cards[random,] #what the argument is doing 
}
shuffle(deck)
deck2 <- shuffle(deck)
deal(deck2)

lst<- list(numbers = c(1,2),logical = TRUE,strings = c("a","b","c"))
lst$numbers #use the $ notation to extract the value from the data frame


lst[1]$numbers
lst$numbers
lst[[1]]
