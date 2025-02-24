# Download any type of data (from the web or use datasets package) or create your own set. 
my_iris <- iris

# Then, on the second step, determine if generic function as discussed in this module can be assigned to your data set
head(my_iris)
list(my_iris)

# identify S3 versus S4
isS4(my_iris)

my_s3 <- list(name = "Tyler", job_title = "Accountant", pay = 80000)
class(my_s3) <- "Employee"
mode(my_s3)
attributes(my_s3)
mode(my_s3$name)

setClass("Employee", 
         representation(
           name = "character",
           job_title = "character",
           pay = "numeric"
         ))

my_s4 <- new("Employee", name = "Tyler", job_title = "Accountant", pay = 80000)
my_s4
mode(my_s4)
mode(slot(my_s4, "name"))
mode(my_s4@name)

