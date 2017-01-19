# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data <- data(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(data)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
data.fr <- data.frame(USPersonalExpenditure)
View(data.fr)

# What are the column names of your dataframe?
col.names <- colnames(data.fr)

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!

# What are the row names of your dataframe?
rownames <- row.names(data.fr)

# Create a column "category" that is equal to your rownames
data.fr$category <- rownames
View(data.fr)

# How much money was spent on personal care in 1940?
data.fr$X1940[data.fr$category == "Personal Care"]

# How much money was spent on Food and Tobacco in 1960?
data.fr$X1960[data.fr$category == "Food and Tobacco"]

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
max.exp.1960 <- max(data.fr$X1960)
max.exp.1960.cat <- data.fr$category[data.fr$X1960 == max.exp.1960]

# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
DetectHighest <- function(year) {
  year <- paste("X", year, sep = "")
  max.exp <- max(data.fr[, year])
  max.exp.cat <- data.fr$category[data.fr[, year] == max.exp]
  return(max.exp.cat)
}

# Using your function, determine the highest spending category of each year
four.five <- DetectHighest("1945")
print(four.five)
