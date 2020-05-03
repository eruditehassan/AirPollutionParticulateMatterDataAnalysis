pollutantmean <- function(directory, pollutant, id = 1:332){
  current_dir <- getwd()
  setwd(directory)
  count <- 1
  files <- list.files(pattern = "*.csv")
  len <- length(id)
  data <- list()
  for (i in id){
    data[[count]] <- read.csv(files[i])
    count <- count + 1
  }
  vals <- vector()
  for (j in 1:len){
    temp <- data[[j]]
    temp <- temp[,pollutant]
    temp <- temp[!is.na(temp)]
    vals <- c(vals,temp)
  }
  mean_out <- mean(vals)
  setwd(current_dir)
  mean_out
}

