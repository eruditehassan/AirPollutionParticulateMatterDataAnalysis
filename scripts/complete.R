complete <- function(directory,id=1:332){
  current_dir <- getwd()
  setwd(directory)
  files <- list.files(pattern = "*.csv")
  len <- length(id)
  nobs <- vector()
  for (i in id){
    temp <- read.csv(files[i])
    nobs <- c(nobs,sum(complete.cases(temp))) 
  }
  setwd(current_dir)
  df <- data.frame(id,nobs)
  df
}