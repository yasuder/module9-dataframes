# Exercise 6: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
getwd()
setwd("/Users/erikay/Desktop/INFO201/module9-dataframes/exercise-6/data")
husky.games.2015 <- data.frame(read.table("huskies_2015.csv", header = FALSE, sep = ","))
print(husky.games.2015)

# Create a vector of the teams that the Huskies played against during that season
teams.played <- husky.games.2015[[2]]
print(teams.played)
                                 
# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015[[3]]

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
passing.yards <- husky.games.2015[[5]]
passing.yards <- as.numeric(as.character(passing.yards[-1]))

print(passing.yards)
rushing.yards <- husky.games.2015[[6]]
rushing.yards <- as.numeric(as.character(rushing.yards[-1]))
print(rushing.yards)

# Create a variable called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- passing.yards + rushing.yards
print(combined.yards)

# What is the score of the game where the Huskies had the most combined yards?
most.yards <- max(combined.yards, na.rm = FALSE)
print(most.yards)
index.max <- match(most.yards, combined.yards, nomatch = NA_integer_, incomparables = NULL)
print(index.max)
best.game <- husky.games.2015[index.max + 1, 3]
print(best.game)

# Define a function `MostYardsScore` that takes in an argument `games` (a data frame) and
# returns a descriptive sentence about the game that were played that had the most yards scored in it.
MostYardsScore <- function(games) {
  
}

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.table("huskies_2016.csv", header = FALSE, sep = ",")

