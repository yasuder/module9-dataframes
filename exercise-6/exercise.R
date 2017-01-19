# Exercise 6: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
getwd()
setwd("/Users/erikay/Desktop/INFO201/module9-dataframes/exercise-6/data")
husky.games.2015 <- read.csv('huskies_2015.csv', stringsAsFactors = FALSE)
print(husky.games.2015)

# Create a vector of the teams that the Huskies played against during that season
teams.played <- husky.games.2015[["opponent"]]
print(teams.played)
                                 
# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015[["uw_score"]]

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
passing.yards <- husky.games.2015[["passing_yards"]]
rushing.yards <- husky.games.2015[["rushing_yards"]]


# Create a variable called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- passing.yards + rushing.yards
print(combined.yards)

# What is the score of the game where the Huskies had the most combined yards?
most.yards <- max(combined.yards)
index.max <- match(most.yards, combined.yards, nomatch = NA_integer_, incomparables = NULL)
best.game <- husky.scores[index.max]

# Define a function `MostYardsScore` that takes in an argument `games` (a data frame) and
# returns a descriptive sentence about the game that were played that had the most yards scored in it.
MostYardsScore <- function(games) {
  scores <- games[["uw_score"]]
  combined.yards <- games[["passing_yards"]] + games[["rushing_yards"]]
  most.yards <- max(combined.yards)
  index.max <- match(most.yards, combined.yards)
  best.game <- scores[index.max]
}

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.csv("huskies_2016.csv", stringsAsFactors = FALSE)
View(husky.games.2016)
this.season <- MostYardsScore(husky.games.2016)
print(this.season)
