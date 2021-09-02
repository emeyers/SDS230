
# 1.1 Basic arithmetic 
2 + 2
7 * 5


# 1.2 Assigning values to objects
a <- 4
b <- 7
z  <- a + b
z


# 1.3 Number journey 
a <- 7 
b <- 52 
x <- a * b 
x


# 2.1 Numeric, string and boolean data types
a <- 7			
s <- "s is a terrible name for an object"
b <- TRUE

class(a)
class(s)



# 3.1 Functions 
sqrt(49)			
tolower("DATA is AWESOME!")

# 3.2 To get help information about a function or data set
? sqrt



# 4.1 Comments
# One can add comments to your code to describe what you are doing
sqrt(49)    # this takes the square root of 49



# 5.1 Vectors are ordered sequences of numbers or letters
# The c() function is used to create vectors

v  <-  c(5, 232, 5, 543)	
s  <-  c("statistics", "data", "science", "fun")		


# 5.2 One can access elements of a vector using square brackets []
s[4]         # what will the answer be?    


# 5.3 We can get multiple elements from a vector too
s[c(1, 2)]


# 5.4 One can assign a sequence of numbers to a vector
z <- 2:10
z[3]	

# 5.5 One can test which elements are greater than a value
z > 3

# 5.6 Can add names to vector elements
names(v) <- c("first", "second", "third", "fourth")


# 5.7 One can also apply functions to vectors
z <- 2:10
sqrt(z)
mean(z)




# 6.1  Data frames contain structured data (likely won't get to this until class 2)
#  install.packages("okcupiddata")
library(okcupiddata)
View(profiles)        # the View() function only works in R Studio!


# 6.2 We can make it visible using the data() function.
data(profiles)

# 6.3 We can extract the columns of a data frame as vector objects using the $ symbol
the_ages <- profiles$age

# 6.4 Can you get the mean() age of users
mean(the_ages)



