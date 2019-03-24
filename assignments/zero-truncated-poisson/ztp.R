# Mikołaj Nowicki rozwiazanie w R

## z wykorzystaniem pakietu stats4 
library(stats4)
# install.packages("countreg", repos="http://R-Forge.R-project.org")
library(countreg)

##Przyjmijmy, że lambda to 5
set.seed(123)
N <- 100
wartosci <- rztpois(N, 5)

funkcja <- function(lambda) {
    wrt = logb(lambda, exp(1)) * sum(wartosci) - N * logb((exp(lambda) - 1), exp(1)) - 
      sum(logb(factorial(wartosci)), exp(1))
    - wrt
}

res <- mle(funkcja, start = list(lambda = 4.5), method = "L-BFGS-B")
summary(res)
