toss_bias_coins <-\(n) .70 ^ n

flip_any_coin <- \(n= 1, p = .5) sample(c("Head", "tail"), size=n, prob = c(p, 1 -p))


flip_any_coin(2, .6)


flip_any_coin_sum <- function(n= 1, p = .5) {
  s = sample(c(1, 0), size=n, prob = c(p, 1 -p))
  return(sum(s))
}


flip_any_coin_sum(2, .6)

y <- function(x){
  if(x >= 90) return("A")
  else if (x >= 80) return("B")
  else return("C")
}
i = double(1)
while(TRUE){
  print(exp(i))
  i = i+ 1
}

