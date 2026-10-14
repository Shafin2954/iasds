age <- c(NA, 9, 10, 4)

gender <- c(NA, "boy", "girl", "boy")
gender
factor(gender)
df <- data.frame(age, g=factor(gender))
names(df)
summary(df)
table(gender)
table(factor(gender))
table(age)
age
df[order(age, decreasing = T),]

mean(df$age, na.rm = T)

df
na.omit(df)

df$new <- c(1, 2, 3, 4)
df
df$new <- NULL
df2 <- df
df2
rbind(df, df2)

# Exercise 8.1
data("mtcars")

names(mtcars)
dim(mtcars) # 32 obj, 11 var
str(mtcars) # all numeric variable

names(mtcars)[4] = "horsepower"
mtcars[order(mtcars$mpg),]

mtcars[mtcars$mpg<30, 1:5]

x <- mtcars$mpg
summary(x)
sort(table(x), decreasing = T)

bin_breaks <- seq(from = min(x) - 0.1, to = max(x) + 0.1, by = 0.1)
hist(x, breaks = bin_breaks, xaxt = 'n')

axis(side = 1,          # 1 = bottom axis
     at = bin_breaks,   # Where to place the tick marks
     labels = bin_breaks, # What text to display at each tick
     las = 2,           # Rotate labels vertically (90 degrees) so they don't overlap
     cex.axis = 0.8) 

