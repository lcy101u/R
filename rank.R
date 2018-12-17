score <- c(73, 95, 86, 95, 95)
rank(-score)

#first occurance wins
rank(-score, ties.method = "first")

#last occurance wins
rank(-score, ties.method = "last")

#random occurance wins
rank(-score, ties.method = "random")

#同一名次 "min"
rank(-score, ties.method = "min")
