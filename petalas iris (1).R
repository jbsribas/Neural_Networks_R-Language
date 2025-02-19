### Primeiro contato.
#help(iris)
head(iris)
summary(iris)
by(iris,iris$Species,summary)


### Ajustando uma �rvore.

head(iris)
#iris[2:4,3]=NA
### Avaliando a discrimina��o produzida pela �rvore.
par(cex=1.5,las=1)
with(iris,plot(Petal.Length, Petal.Width,type='n',xlab='Comprimento da p�tala',ylab='Largura da p�tala'))
with(iris[which(iris$Species=='setosa'),],points(jitter(Petal.Length), jitter(Petal.Width),pch=20,col='red'))
with(iris[which(iris$Species=='virginica'),],points(jitter(Petal.Length), jitter(Petal.Width),pch=20,col='green'))
