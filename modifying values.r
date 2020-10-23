vec <- c(0,0,0,0,0,0)
vec[1] #selecting the first value of the vec 
vec[1] <- 1000 #modifying the first value 
vec[1]
vec
vec[c(1,3,5)] <- c(1,1,1) # replace multiple values of the selected values
vec
vec[7]<- 0 #creating new values 
vec
deck2<- deck 
deck2[c(13,26,39,52),]# [rows,coloum]
deck2[c(13,26,39,52),3]
deck2$value[c(13,26,39,52)]<- c(14,14,14,14)
deck2
#logical subsetting
"ace" == deck2$face
sum("ace" == deck2$face)
deck3 <- deck
deck3$value[deck3$face == "ace"] <- 14
deck3
shuffle <- function(cards){
  random <- sample(1:52,size = 52)
  cards[random,]
}
shuffle(deck2)
deck4 <- deck 
deck4$value <- 0 
head(deck4,13)
?head
deck$suit == "hearts"
deck4$value[deck4$suit == "hearts"] <- 1
deck4
