# Day 2
# Part 1
data <- read.delim("Dropbox/AoC_2021/input_2.2.txt", sep = " ", head = F)
hPos <- 0
dPos <- 0
for (i in 1:nrow(data)){
  if ( grepl("for", data$V1[i])){
    hPos <- hPos + data$V2[i]
  } else if (grepl("down", data$V1[i])){
    dPos <- dPos + data$V2[i]
  } else {
    dPos <- dPos - data$V2[i]
  }
}

paste0("The position is ", hPos, " forward and ", dPos " deep.")
paste0("The answer is ", hPos * dPos)

# Part two
data <- read.delim("Dropbox/AoC_2021/input_2.2.txt", sep = " ", head = F)
hPos <- 0
dPos <- 0
aim <- 0
for (i in 1:nrow(data)){
  if ( grepl("for", data$V1[i])){
    hPos <- hPos + data$V2[i]
    dPos <- dPos + (aim*data$V2[i])
  } else if (grepl("down", data$V1[i])){
    aim <- aim + data$V2[i]
  } else {
    aim <- aim - data$V2[i]
  }
}

paste0("The position is ", hPos, " forward and ", dPos " deep.")
paste0("The answer is ", hPos * dPos)
