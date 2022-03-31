BTS_SE <- function(SAMPLE,B){
  n <- length(SAMPLE)
  Jstar <- c(rep(0,B))
  for (i in 1:B){
    BSAMPLE <- SAMPLE[sample(n, replace = T, prob = c(rep(1/n,n)))]
    Jstar[i] <- sum((BSAMPLE + 4)^2)/n
  }
  Jbar <- (1/B)*sum(Jstar)
  i <- 1:B
  se <- ((1/(B-1))*sum((Jstar[i] - Jbar)^2))^(1/2)
  print(se)
}
