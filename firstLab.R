x<- 25
abs(x)
sqrt(x)
ceiling(x)
floor(x)
x
X<- "Hello World"
X
tolower(X)
toupper(X)
strsplit(X, split = "")
strsplit(X, split = " ")
y <- "Hi there"
cx<- 50.25
round(cx)
nchar(y)
v <- "Faisal"
paste(y,v,sep ="")
str <- "lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolor magna aliqua"
str
cat(str)
str1 <- "We are the so-called \"Vikings\", from the north."
str1
cat(str1)


a<- 60
b<- 60

if(a>b){
  print("a is greater than b")
} else{
  print("a is not greater than b")
}

if(a>b){
  print("a is greater than b")
} else if (a==b){
  print("a and b are equal")
} else {
  print("a is not greater than b")
}

s<- 78
w<- 120
if(s<w){
  print("True")
} else{
  print("false")
}

score <- 1
ifelse(score > 0.5, ("Passed"), ("Failed"))

outcome <- ifelse(score > 0.5, ("Passed"), ("Failed"))
outcome
switch(2, "red","green","blue")
switch("length", "color" = "red", "shape" = "square", "length" = 5)
switch("color", "color" = "red", "shape" = "square", "length" = 5)
switch("shape", "color" = "red", "shape" = "square", "length" = 5)
switch(1, "red","green","blue")
switch(3, "red","green","blue")
