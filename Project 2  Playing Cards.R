#atomic vector is just a simple vector of data eg.
die <- c(1,2,3,4,5,6)
die

is.vector(die)#vector tests whether an object is an atomic vector; returns
              #TRUE or FALSE

die <- c(1,2,3,4,5,6)
names(die) <- c("one","two","three","four","five","six")
#assigning the name attribute to the die 
#to remove the names attribute set it to NULL 
names(die)<- NULL 

dim(die)<- c(2,3)
# transform an atomic vector into an n-dimensional array 

hands <- c("ace","king","queen","jack","ten","spade","spade","spade","spade","spade")
matrix(hands, ncol = 2)

df <- data.frame(face= c("ace","two","six"),
                 suits = c("clubs","clubs","clubs"),
                 value = c(1,2,3))
df

write.csv(deck,file = "cards.csv",row.names=FALSE)
