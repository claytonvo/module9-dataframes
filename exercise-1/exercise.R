# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
number.scored <- c(12,3,37,27,26,6,20,31,31,25,5,40,10,24,31,25,26,20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
number.against <- c(10,9,18,17,24,6,25,25,24,15,14,7,38,3,34,23,6,36)

# Combine your two vectors into a dataframe
seahawks.season <- data.frame(number.scored,number.against,stringAsFactors = FALSE)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
seahawks.season$diff <- number.scored - number.against

# Create a new column "won" which is TRUE if the Seahawks won
seahawks.season$won <- seahawks.season$diff > 0

# Create a vector of the opponent names corresponding to the games played
opponents.names <- c('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r')

# Assign your dataframe rownames of their opponents
rownames(seahawks.season) <- opponents.names

# View your data frame to see how it has changed!
