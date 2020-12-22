library(tidyverse)

setwd("C:/Users/Oscar/Documents/AdventofCode2020")

df_unedit <- read.table("day2_data.txt", sep = " ")
range <- stringr::str_split_fixed(df_unedit$V1, "-", 2)


df <- data.frame(
  min = as.numeric(range[, 1]),
  max = as.numeric(range[, 2]),
  letter = gsub(":", "", df_unedit$V2),
  pass = df_unedit$V3
)

# Part one
func <- function(x) {
  lengths(regmatches(x["pass"], gregexpr(x["letter"], x["pass"])))
}

count <- apply(df, 1, func)

poss_pass <- count >= df$min & count <= df$max
sum(poss_pass)

# Part two
min_letter <- substr(df[, "pass"], df[, "min"], df[, "min"])
df <- cbind(df,min_letter)

max_letter <- substr(df[, "pass"], df[, "max"], df[, "max"])
df <- cbind(df,max_letter)

check <- (df$letter==df$min_letter & df$letter!=df$max_letter) | (df$letter!=df$min_letter & df$letter==df$max_letter)
sum(check)
