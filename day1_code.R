install.packages("tidyverse")
library("tidyverse")

setwd("C:/Users/Oscar/Documents/AdventofCode2020")

list.files()

# Loading data
dat <- read_tsv("day1_data.txt")


# finding the pair that sums to 2020
test.function <- function(dat) {
  print("Start")
  for( i in 1:length(dat[[1]])){
    for( j in i:length(dat[[1]])){
      if(dat[[1]][i]+dat[[1]][j]==2020){
        print(dat[[1]][i])
        print(dat[[1]][j])
      }
    }
  }
}

test.function(dat)

print(983*1037)

test.function1 <- function(dat) {
  print("Start")
  for( i in 1:length(dat[[1]])){
    for( j in i:length(dat[[1]])){
      for( k in j:length(dat[[1]])){
      if(dat[[1]][i]+dat[[1]][j]+dat[[1]][k]==2020){
        print(dat[[1]][i])
        print(dat[[1]][j])
        print(dat[[1]][k])
        }
      }
    }
  }
}

test.function1(dat)

print(777*790*453)
