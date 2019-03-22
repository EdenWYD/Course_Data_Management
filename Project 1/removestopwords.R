#!/usr/bin/env Rscript

process <- function (input) {
  stopwords<- c("to",
               "that",
               "it",
               "you",
               "was",
               "against",
               "all",
                "am",
                "an",
                "and")
    if(input %in% stopwords){
        output<-remove(input)
    }  else{
        output<-input
    }
  return(output)
}


f <- file("stdin")
open(f)
while(length(line <- readLines(f, n=1)) > 0) {
  line = process(line)
  write(line, stdout())
}
