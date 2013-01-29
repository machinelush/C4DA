getmonitor <- function(id, directory, summarize = FALSE) {
## 'id' is a vector of length 1 indicating the monitor ID
## number. The user can specify 'id' as either an integer, a
## character, or a numeric.

## 'directory' is a character vector of length 1 indicating
## the location of the CSV files

## 'summarize' is a logical indicating whether a summary of
## the data should be printed to the console; the default is
## FALSE

id <- toString(id)        
if (length(id) == 1) { id <- paste(0,0,id, sep='')
} else if (length(id) == 2 ) { id <- paste(0,id, sep='') } 
else { id <- paste(id, sep='')}

data <- read.csv(file.path(getwd(),directory,paste(id,".csv",sep='')),header=T)
if (summarize == T) { print(summary(data))}

}
