data1 =read.csv("D:/Documents/Desktop/Social_Network_Ads.csv")
data1
attach(data1)
View(data1)
getwd()
setwd("D:/Documents")
library(base)
library(ggplot2)

summary(data1)
var(data1)

#View
data1$Age
data1$EstimatedSalary
data1$Purchased

mean(data1$Age)
mean(data1$EstimatedSalary)
mean(data1$Purchased)

median(data1$Age)
median(data1$EstimatedSalary)
median(data1$Purchased)

#modus
modus <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
modus(data1$EstimatedSalary)
modus(data1$Age)
modus(data1$Purchased)

quantile(data1$EstimatedSalary)
quantile(data1$Age)
quantile(data1$Purchased)

hist(data1$EstimatedSalary, main ="EstimatedSalary")
hist(data1$Age, main = "Age")
hist(data1$Purchased, main = "Purchased")
plot(data1$EstimatedSalary, main = "EstimatedSalary")
plot(data1$Age, main = "Age")

sd(EstimatedSalary)
sd(Age)
sd(Purchased)

plot(data1[1:2], main = "sallary")

plot(x=data1$Age, y=data1$EstimatedSalary,
     xlab="Age",
     ylab="EstimatedSalary",
     main = "Scatterplot Age vs EstimatedSalary",)

boxplot(data1$Age, main = "boxplot age")     
boxplot(data1$EstimatedSalary, main = "boxplot salary")     
boxplot(data1$Purchased, main = "boxplot purchased")
