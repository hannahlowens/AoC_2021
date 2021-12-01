input_1.1 <- read.delim("input_1.1.txt", sep = "\n", header = F)

# Part 1
start <- input_1.1[1,]
upcount <- 0
for (i in 2:nrow(input_1.1)){
  if(input_1.1[i,] > start){
    upcount <- upcount + 1
  }
  start <- input_1.1[i,]
}

paste0("The answer to part 1 is: ", upcount)

# Part 2
tripleIndex <- 1:3
start <- sum(input_1.1[tripleIndex,])
upcount <- 0
for (i in 2:nrow(input_1.1)){
  if (max(tripleIndex) > nrow(input_1.1)){
    break
  } else {
    sumTrip <- sum(input_1.1[tripleIndex,])
    if(sum(input_1.1[tripleIndex,]) > start){
      upcount <- upcount + 1
    }
  }

  start <- sumTrip
  tripleIndex <- tripleIndex + 1
}
paste0("The answer to part 1 is: ", upcount)

# 1339 is too low
# 1996 is too high
# 1997 is too high
