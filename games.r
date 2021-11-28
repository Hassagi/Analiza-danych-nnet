library(nnet)

games <- read.csv(file='Games.csv')

dane <- games[c(1:200),c(5,10,12)]
dane_odp <- games[c(1:200),7]

require(class)
class.ind(dane_odp)

x <- c(1:10)
suma <- 0

for (i in x) {
  model <- nnet(dane, class.ind(dane_odp),softmax=T,size=12,maxit=1000)
  model_pred <- predict(model, newdata = dane, type = "class")
  błąd <- sum(model_pred!=dane_odp)
  suma <- suma + błąd
}

średni_błąd <- (suma/length(x))/length(dane_odp)
średni_błąd*100

dane2 <- games[c(201:400),c(5,10,12)]
dane_odp2 <- games[c(201:400),7]
class.ind(dane_odp2)

x <- c(1:10)
suma <- 0

for (i in x) {
  model <- nnet(dane, class.ind(dane_odp),softmax=T,size=12,maxit=1000)
  model_pred2 <- predict(model, newdata = dane2, type = "class")
  błąd2 <- sum(model_pred2!=dane_odp2)
  suma <- suma + błąd2
}
średni_błąd2 <- (suma/length(x))/length(dane_odp2)
średni_błąd2*100

średni_błąd
średni_błąd2
