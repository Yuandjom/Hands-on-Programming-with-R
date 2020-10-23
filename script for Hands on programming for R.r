roll2 <- function(bones) {
  dice <- sample(bones, size = 2 , replace = TRUE)
  sum(dice)
}

roll2(bones = 1:9)

## this is a script for R

x <- c(-1,-0.8,-0.6,-0.4,-0.2,0,0.2,0.4,0.6,0.8,1)
x
y <- x^3
y

qplot(x,y)

x <- c(1,2,2,2,3,3)
qplot(x,binwidth=1)

replicate(3,1+1) #this means replicate 3 times for the number (1+1)

roll <- function(){
  die <- 1:6
  dice <- sample(x = die , size = 2 ,replace = TRUE , prob = c(1/8 , 1/8 ,1/8,1/8,1/8,3/8))
  sum(dice)
  
}
rolls <- replicate(10000, roll())
qplot(rolls, binwidth=1)
