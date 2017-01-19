# Exercise 5: Popular Baby Names Over Time

# Read in the female baby names .csv file into a variable called `female.names`
# Remember to not load the strings as factors!
# getwd()
# setwd("~/Desktop/INFO201/module9-dataframes/exercise-5/data")
female.names <- read.csv("female_names.csv", stringsAsFactors = FALSE)
View(female.names)

# Create a vector `years` as the year column of the dataset
years <- female.names$year

# Create a vector `names` as the name column of the datset
names <- female.names$name

# Create a vector `props` as the proportion column of the dataset
props <- female.names$prop

# Create a vector `names.2013` as your names vector where your years vector is 2013
names.2013 <- female.names$name[years == 2013]
print(names.2013)

# Create a vector `prop.2013` as the your props vector where your years vecctor is 2013
prop.2013 <- female.names$prop[female.names$year == 2013]
print(prop.2013)

# What was the most popular female name in 2013?
max.prop <- max(female.names$prop[female.names$year == 2013])
print(max.prop)
most.pop.2013 <- female.names$name[female.names$prop == max.prop]
print(most.pop.2013)

# Write a funciton `most.popular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. Note how you had to make intermediary variables above.
mostPopular <- function(my.year) {
  max.prop <- max(female.names$prop[female.names$year == my.year])
  most.pop <- female.names$name[female.names$prop == max.prop]
  return(paste("In the year", my.year, "the most popular female name was", most.pop))
}

# What was the most popular female name in 1994?
sample <- mostPopular(1994)
print(sample)

### Bonus ###

# Write a function `how.popular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
how.popular <- function(name, year) {
  how.pop.general <- female.names$prop[female.names$name == name]
  
  print(how.pop.general)
  return(paste("In the year", year, "the name", name, "was", how.pop, "of all female names"))
}

sample2 <- how.popular("Jessica", 1994)
print(sample2)
# How popular was the name 'Laura' in 1995?
