corr <- function(directory, threshold = 0) {
  current_dir <- getwd()
  setwd(directory)
  files <- list.files(pattern = "*.csv")
  output <- vector()
  for (i in 1:length(files)){
        temp <- read.csv(files[i])
        comp <- sum(complete.cases(temp))
        if (comp > threshold){
              temp <- temp[complete.cases(temp),]
              op <- c(op,cor(temp$sulfate,temp$nitrate))
          }
    }
  setwd(current_dir)
  if (length(nitrates) > 0){
    op
  }
  else {
    vector()
  }
}