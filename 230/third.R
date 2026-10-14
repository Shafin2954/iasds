names(mtcars)
length(names(mtcars))
mpg <- mtcars$mpg    
mean(mpg)
sd(mpg)
length(is.na(mtcars$wt))

new <- mtcars[mtcars$mpg > 22,]
new2 <- mtcars[mtcars$gear==5 & mtcars$cyl==4, c("gear", "cyl")]
new2
as_tibble(new)
new
