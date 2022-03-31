MC <- function(SAMPLE,a){
  n <- length(SAMPLE)
  i <- 1:n
  result <- sum((SAMPLE[i] + a)^2)
  print(result/n)
}
res <- data.frame(n = c(100,1000), a0 = c(MC(rnorm(100), 0),MC(rnorm(1000), 0)), a1 = c(MC(rnorm(100), 1),MC(rnorm(1000), 1)), a2 = c(MC(rnorm(100), 2),MC(rnorm(1000), 2)), a3 = c(MC(rnorm(100), 3),MC(rnorm(1000), 3)), a4 = c(MC(rnorm(100), 4),MC(rnorm(1000), 4)))