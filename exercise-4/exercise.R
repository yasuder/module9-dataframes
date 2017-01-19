# Exercise 4: Gates Foundation Educational Grants

# Read the data from the `data/gates_money.csv` file into a variable called
# `grants` using the `read.csv()` function
# Be sure to set your working directory, and do NOT treat strings as factors!
getwd()
setwd("~/Desktop/INFO201/module9-dataframes/exercise-4")
grants <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at the loaded data
View(grants)

# Create a variable `organization` as the `organizationtotal.amount` column of the dataset
organization <- grants$total_amount
grants$organizationaltotal.amount <- organization

# Confirm that the "organization" column is a vector using the `is.vector()`
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant <- mean(grants$total_amount)

# What was the dollar amount of the largest grant?
max.grant <- max(grants$total_amount)

# What was the dollar amount of the smallest grant?
min.grant <- min(grants$total_amount)

# Which organization received the largest grant?
max.org <- grants$organization[grants$total_amount == max.grant]

# Which organization received the smallest grant?
min.org <- grants$organization[grants$total_amount == min.grant]

# How many grants were awarded in 2010?s
num.grants.2010 <- length(grants$start_year[grants$start_year == 2010])
