globalenv()
baseenv()
emptyenv()

#look up to environment's parent with parent.env
parent.env(globalenv())
#use R's $ syntax to access an object in a specific environment 
head(globalenv()$deck,3)
#use assign function to save an object into a particular environment 
assign("new","hello Global",envir = globalenv())
new

show_env <- function() { #use to show the runtime environment
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects =ls.str(environment()))
}
show_env()
show_env <- function() { 
  #use to show the runtime environment
  a<-1
  b<-2
  c<-3
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects =ls.str(environment()))
}
show_env()

foo <- "take me to your runtime"

show_env <- function(x=foo) { #use to show the runtime environment
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects =ls.str(environment()))
}
show_env()
#How to apply assign function
deal <- function() {
  card <-deck[1,]
  assign("deck",deck[-1,],envir = globalenv())
  card
  
}

deal()
DECK <- deck
shuffle <- function() {
  random = sample(1:52,size= 52)
  assign["deck",DECK[random, ],envir = globalenv()]
  
}
shuffle()
deal()

