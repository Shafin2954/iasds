# positional indexing
a <- c(2, 9, 5, 4)
a[3]
a[-c(1, 1, 3)]

a[a>4]
a>4
4 %in% a
a[a>2&a<5]

a[1] = 6
a
b <- 1
b[a>5]<-20
b

set.seed(100)
nage <- sample(x = 30:80, size = 1000, replace = T)
length(nage[nage>70])
length(nage[nage<40])
length(nage[nage==39])
length(nage[nage>77 | nage<35])
length(nage[nage>=50 & nage<=55])
sum(nage %in% 70:75)/length(nage)*100                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
sum(nage>70)

x <- 0:5
as.logical(x)

attr(x, "length") <- 90
attributes(x)

names(x) <- c(4:9)
x
dim(x) <- c(2,3)

y <- 1:36
dim(y) <- c(2, 2, 3, 3)
y


A = matrix(c(2, 9, 0, 0, 0, 4, 1, 4, 7, 5, 5, 1, 7, 8, 7, 4), byrow = TRUE, nrow = 4)
A
b = matrix(c(-1, 6, 0, 9))
b
t(A) %*% b
solve(A)
solve(A, b)

chol(A)
