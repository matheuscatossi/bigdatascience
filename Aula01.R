# Aula 01 = Geração de amostras
install.packages("ggplot2")
library(ggplot2)
# Dataframe diamonds
d <- diamonds

#Entra e saída de dados
write.csv(d,file="d.csv")
d1 <- read.csv("d.csv")

# Média
mean(d$price)

# Mediana
median(d$price)

# Desvio Padrão
sd(d$price)

#Geração de amostras
a1 <- d[1:3000,]

mean(a1$price)
median(a1$price)
sd(a1$price)

a2 <- d[3001:6000,]

mean(a2$price)
median(a2$price)
sd(a2$price)

# Geração de números aleatórios
sample(3)

# Definição da semente de aleatoriedade
# ExemploÇ semente é o 22
set.seed(22)
sample(3)

# d[1:2,]
# d[2:1,]

set.seed(22)
va <- sample(53940)

# Geração da amostra aleatória
a3 <- d[va[1:3000],]
mean(a3$price)
median(a3$price)
sd(a3$price)

# Histograma
hist(d$price)

# Visualização de 4 gráficos
par(mfrow=c(2,2))


#Comparativo de distribuições
hist(d$price)
hist(a1$price)
hist(a2$price)
hist(a3$price)

# Descrição de uma amostra
summary(d)
summary(a3)

# Boxplot
par(mfrow=c(1,1))
boxplot(d$price~d$color)

# Gráfico de dispersão
m <- mtcars
plot(m$mpg~m$wt)

# Coef. correlação linear
# (pearson)
cor(m$mpg, m$wt)
cor(m)

# Exercício 01
install.packages("swirl")
library("swirl")
swirl()




