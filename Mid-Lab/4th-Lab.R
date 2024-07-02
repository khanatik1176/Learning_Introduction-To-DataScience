#Installing Packages
install.packages("dplyr")

#Importing CSV file
mydata <- read.csv("C:/Ds/Iris.csv", header = TRUE, sep =",")
mydata


#Head Function use kore amra first 6 ta element show korte chaile parbo.
vars <- c("SepalLengthCm", "SepalWidthCm", "PetalLengthCm","PetalWidthCm")
head(mydata[vars])

#Descriptive Statistics implementation (Min, 1st Quardent, Median, Mean, 3rd Quardent, Max are calculated)

summary(mydata[vars])

#Data State Annotation.. Categorical k numeric a represent kora jai and numeric k categorical e represent kora jai.
#Label korar jonou amra factor function use kora somvob.
# $ sign diye specific attribute k select kora jai

#Categorical to numerical
mydata$Species<- factor(mydata$Species, levels = c("Iris-setosa","Iris-versicolor","Iris-virginica"), labels = c(1,2,3))

mydata$Species

mydata

#Numerical to Categorical
mydata$Species<- factor(mydata$Species, levels = c("1","2","3"), labels = c("Iris-setosa","Iris-versicolor","Iris-virginica"))

mydata


#To see the summary of the structure of data 
#obs means observations, observations means instances

str(mydata)

#Using Standard deviation of the attribute

s<- mydata$SepalLengthCm
sd(s)

sl<- mydata$SepalWidthCm
sd(sl)

#Standard deviation of multiple Attributes in R using dplyr

library(dplyr)
mydata%>%summarise_if(is.numeric,sd)

#Selecting Random N Rows using dplyr

sample_n(mydata,3)

#Select specific Variables

mydata2 = select(mydata,SepalLengthCm)
mydata2

mydata

#Detecting Null Values for Iris Data set
#Missing value thakle TRUE likha thkbe.. Missing na thkle False likha thkbe
#is.na diye categorical missing value detect kora jai na ... Categorical r jonou onou method use korte hbe

mydata <- read.csv("C:/Ds/Iris.csv", header = TRUE, sep =",")
is.na(mydata)

#Counting number of Null Values in each Column

colSums(is.na(mydata))

#Finding the specific row number of Null values

which(is.na(mydata$SepalWidthCm))

#Remove null values from Iris Data set

remove <- na.omit(mydata)
remove
