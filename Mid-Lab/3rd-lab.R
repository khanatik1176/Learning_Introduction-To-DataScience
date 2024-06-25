install.packages("dplyr")

g <- "My First List"
h <- c(25,26,18,39)
j <- matrix(1:10,nrow=5)
k <- c("one","two","three")

mylist = list(title=g)

mylist[[1]]


item <- list("Mango", "Apple")
item[-1]
item


var1 = readline(prompt= "Enter any Value : ")
var2 = readline(prompt = "Enter any number : ")

var2 = as.integer(var2)

print(var1)
print(var2)


var1 = readline(prompt= "Please provide me your name")
var2 = readline(prompt = "Please provide me the Address")
var3 = readline(prompt = "Please provide me the phone number")

var3 = as.integer(var3)
print(var1)
print(var2)
print(var3)

var4 = as.numeric(var3)

var5 = readline(prompt = "Enter today's date")
var6 = as.Date(var5)


s = scan()
print(s)

d = scan(what = double ())
print(d)


mydata <- data.frame(age=numeric(0),
          gender= character(0), weight=numeric(0))
mydata <- edit(mydata)
print(mydata)

mydata <- read.csv("C:/edb/DemoTable.csv", header = TRUE, sep =",")
mydata

myData <- read.csv("C:/edb/iris.data.csv", header = TRUE, sep = ",")
myData

myData[5:10,]
#Specific Row selection
myData[c(5,7),]
myData$Iris.setosa

#Subset function uses

subset(myData, Iris.setosa == "Iris-virginica")

subset(myData, X1.4>=6)
subset(myData, X1.4>=2)

#Package loading done here
library(dplyr)
stats <- data.frame(player=c('A','B','C','D','A','A'), runs=c(100,200,408,19,56,100), wickets=c(17,20,NA,5,2,17))
stats
distinct(stats)

#Column er duplicate values gula row wise delete kore dei
distinct(stats, player, .keep_all = TRUE)

arrange(stats, runs)


select(stats,runs,wickets)


rename_data<- rename(stats, runs_scored=runs)


mutated_value<-mutate(stats, avg=runs/4)

transmuted_data <- transmute(stats, avg=runs/4)

summerized_data <- summarize(stats, sum(runs), mean(runs))
summerized_data
