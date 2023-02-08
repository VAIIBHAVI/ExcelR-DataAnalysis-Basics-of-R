
##Q1.Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10 
x=c(seq(1,50,by=2))
print(x)

----------------

##Q2. What are the different data objects in R? and write syntax and example for each and every object
#ANS:There are 6 basic types of objects in the R language:
#(1)vector
x=c(1, 2, 3, 4)
print(x)

#(2)list
l1=list(c(1, 2, 3, 4), list("a", "b", "c"))
print(l1)

#(3)Matrix
m1=matrix(x, nrow = 3)
print(m1)

#(4)Factor
f=c("apple", "boat", "country", "summer", 
       "dance","boat" )

print(factor(f))

#(5)Dataframe
deptno=c(10,20,30)
dept=c("sales","analytics","finance")
df=data.frame(deptno,dept)
print(df)

#(6)Array
arr <- array(c(1, 2, 3), dim = c(3, 3, 3))
print(arr)

----------------

##Q3. Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame

Name= c("Alex","izzy","lexi","Addie","joey")
Age=c(25,22,20,26,30)
Subject=c("Maths","History","Geography","Science","Statistics")

df=data.frame(Name,Age,Subject)
df

#fetching a row
print(df[3,])
#fetching a column 
print(df[,2])

#deleting a row
print(df[-3,])
#deleting a column
print(df[,-2])
#Or
print(df[-3,-2])

#adding new row
new_row = c("jake",19,"music")
df1 = rbind(df,new_row)
df1
#adding new column
deptno = c(10,20,30,40,50)
df2 = cbind(df,deptno)
df2

-------------

##Q4.Write nested if else statements to print whether the given number is negative, positive or Zero 

x=78
if (x == 0) {
  print("Zero")
} else if (x > 0) {
  print("Positive number")
} else print("Negative Number")

-------------

##Q5.write a program to input any value and check whether it is character, numeric or special character

x = "fruit"
if (is.character(x)){
  print('Character')
} else if (is.numeric(x)){
  print('Numeric')
} else {
  print('Special')
}

------------

##Q6.write difference between break and next also write examples for both 
#Ans:Jump statements are used in loops to terminate the loop at a particular iteration or to skip a particular iteration in the loop. The two most commonly used jump statements in loops are: Break Statement and Next Statement
#The break keyword is a jump statement that is used to terminate the loop at a particular iteration.
#The next statement is used to skip the current iteration in the loop and move to the next iteration without exiting from the loop itself.

  #Break Statement
i=1:10
for (x in i)

  {
  if (x == 5) 
  {
    print(paste("Coming out from for loop Where i = ", x))
    break
}
  print(paste("Values are: ", x))
}  

  #Next Statement
i=1:10

for (x in i)  
{
  if (x == 6)  
  {
    print(paste("Skipping for loop Where i =  ", x))
    next
  }
  print(paste("Values are:  ", x))
}

-----------

##Q7.write a program to print a given vector in reverse format  

x= c(1,5.6,3,10,3.5,5)
v=rev(x)
print(v)

-----------

##Q8.write a program to get the mode value of the given vector (‘a’,’b’,’c’,’t’,’a’,’c’,’r’,’a’,’c’,’t’,’z’,’r’,’v’,’t’,’u’,’e’,’t’)

md = c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")

# Creating the function.
getmode=function(md) {
  uniq=unique(md)
  uniq[which.max(tabulate(match(md, uniq)))]
}

result=getmode(md)
result

-----------

##Q9.Write a function to filter only data belongs to ‘setosa’ in species of Iris dataset.( using dplyr package) 

library(dplyr)
iris_setosa=iris %>% filter(Species == "setosa")
iris_setosa

-----------

##Q10.Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)

library(dplyr)
data=head(iris)
data%>%mutate(Means_of_obs=Sepal.Length+Sepal.Width+Petal.Length+Petal.Width/4)

-----------

##Q11.Filter data for the “versicolor” and get only ‘sepel_length’ and Sepel _width’ columns.( using dplyr package)

library(dplyr)
ir=iris%>%filter(Species=="versicolor")
versic=ir%>%select(Sepal.Length,Sepal.Width)
versic

-----------

##Q12.create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )

install.packages("ggplot2")
library(ggplot2)
head(mtcars)

#scatter plot
g=ggplot(mtcars,aes(x=wt,y=mpg))+geom_point(size=4,shape=20,color="green")
g

#boxplot
mtcars$cyl = factor(mtcars$cyl)
ggplot(mtcars, aes(x=cyl, y=disp)) + geom_boxplot(color="red")

#histogram
ggplot(mtcars, aes(x=drat)) + geom_histogram(color="yellow",fill="purple")

#line graph
ggplot(mtcars, aes(x=mpg,y=hp)) + geom_line(color="brown")

#bar graph
p = ggplot(mpg, aes(x= class)) + geom_bar()
p
