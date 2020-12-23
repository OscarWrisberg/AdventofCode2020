library("tidyverse")

setwd("C:/Users/Oscar/Documents/AdventofCode2020")

# Loading data 
#strange way to load a fixed width datasets to make a dataset containing 31 rows each containing a single character
dat <- read_fwf("day3_data.txt",fwf_widths(c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),col_names = NULL))

#Note: The best way to make this would probably be a function in which you give how much down and how much right the path is
dat <- as.data.frame(dat)

#Function which returns the path you take given the amount you travel right and down
tree_hit <- function(x,y,z){
  posx <- 1 #Starting position
  posy <- 1 #Starting position
  path <- vector(length = 323) #Vector which is going to contain the path
  for(i in 1:length(z[[1]])){  #For loop which loops over all the rows
    path[i]<-(z[[posy,posx]]) # Saving your position at a given row
    posx <- posx + x # Updating your position
    posy <- posy + y # Updating your position
    if(posx >= 32){ # if you scoot to far to the right it starts you back
      posx <- posx - 31 
    }
    if(posy >= 324){ # if you skip rows this is supposed to end the loop
      break()
    }
  }
  return(path)
}

path <- tree_hit(3,1,dat)
trees <- path=="#"
sum(trees)


# Assignment 2
#right 1 down 1
path11 <- tree_hit(1,1,dat)
trees11 <- path11=="#"
sum11 <- sum(trees11)
print(sum11)

#right 3 down 1
path31 <- tree_hit(3,1,dat)
trees31 <- path31=="#"
sum31 <- sum(trees31)
print(sum31)

#right 5 down 1
path51 <- tree_hit(5,1,dat)
trees51 <- path51=="#"
sum51 <- sum(trees51)

#right 7 down 1
path71 <- tree_hit(7,1,dat)
trees71 <- path71=="#"
sum71 <- sum(trees71)


#right 1 down 2
path12 <- tree_hit(1,2,dat)
trees12 <- path12=="#"
sum12 <- sum(trees12)

print(sum11)
print(sum12)
print(sum31)
print(sum51)
print(sum71)

