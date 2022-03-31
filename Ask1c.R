ImpSamp <- function(n, a){
  SAMPLE <- rnorm(n,mean = a, sd = 1)
  i <- 1:n
  result <- sum(((SAMPLE[i]+a)^2)*exp((-2*a*SAMPLE[i] + a^2)/2))
  print(result/n)
}

resImpSamp = data.frame(n = c(100,1000), a0 = c(ImpSamp(100,0), ImpSamp(1000,0)), a1 = c(ImpSamp(100,1), ImpSamp(1000,1)), a2 = c(ImpSamp(100,2), ImpSamp(1000,2)), a3 = c(ImpSamp(100,3), ImpSamp(1000,3)), a4 = c(ImpSamp(100,4), ImpSamp(1000,4)))