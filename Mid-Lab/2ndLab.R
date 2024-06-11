#While loop
i<-1
while (i<6){
  print(i)
  i<-i+1
}

#While loop using break
i <-1
while (i<6){
  print(i)
  i<-i+1
  if(i==4){
    break
  }
}

#While loop using next
i<-0
while (i<6) {
  i<-i+1
  if(i==3){
    next
  }
  print(i)
}


#For loop

for (x in 1:10 ) {
  print(x)
}

#Nested for loop

for (x in 1:2){
  for(y in 1:3){
    print(x*y)
  }
}

#Functions in R

add_numbers <- function (a,b){
  sum<-a+b
  return(sum)
}

print(add_numbers(4,5))


#R in Data Structer

#Vector 

a <- c(1,2,5,3,6,-2,4)
b <-c("one","two","three")
c<- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE)

add <- sum(a)

print(add)

name <- c("hello","world")
name1 <- "Hello World"
nchar(name1)
nchar(name)

#Math operation using vector 

x<- c(2,4,6,8)
x+2
x*3

x+ c(3,4,5,6)

#Sort a vector

X<- c(20,10,40,15)
sort(X)

x<- c("B","A","D")
sort(x)

# create a vector
vec <- c(4, 6, 2, 1, 3, 7, 5)
# sort vector with NA to start
new_vec <- sort(vec, decreasing = TRUE)
# display the sorted vector
print(new_vec)


#Accessing Index of a vector

for(x in 1:4){
XY <- c(20,10,40,15)
result <- XY[x]

print(result)
}

XY <- c(20,10,40,15)
XY[1:3]
XY[c(1,4)]


#Matrices in R [2D Array]

mymatrix <- matrix(1:20, nrow =5, ncol=4)
mymatrix

cells <-c(1:4)
rnames <- c("R1","R2")
cnames<-c("C1","C2")
mymatrix <- matrix(cells, nrow=2,ncol=2, byrow=TRUE, dimnames = list(rnames,cnames))
mymatrix


#Accesing matrix values
mymatrix <- matrix(1:10, nrow=2, ncol=5)
mymatrix[2,]
mymatrix[,2]
mymatrix[2,3]
mymatrix[1,3]
mymatrix[1,c(2,3)]
var<-mymatrix[2,c(4,5)]
message<-"Output is:"
cat(message,var)


#Array in R

myarray <- array(1:24, c(2,3,3))
myarray

myarray[1,2,1]
myarray[1,2,2]


#Data Frames

patientID<- c(1,2,3,4,5)
age<- c(25,34,28,52,44)
diabetes <- c("Type1","Type2","Type1","Type1","Type2")
status<- c("Poor","Improved","Excellent","Improved","Danger")
bloodgroup <- c("A+","B+","A-","B-","O+")
patientdata <- data.frame(patientID,age,diabetes,status)

patientdata <- cbind(patientdata,bloodgroup)
patientdata


install.packages('tibble')

library(tibble)
phone_Number<-c(01767159064,01711896564,0178515612,0144842211,01711896562)
NewData<-add_column(patientdata,phone_Number, .after = 2)

new_df <- subset(patientdata, select = -c(3,4,5,6,7))
new_df
patientdata = add_column(new_df,phone_Number, .after=3)
patientdata
