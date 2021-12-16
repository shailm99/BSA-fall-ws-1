# Workshop 3 - Activity 


# Activity 1 - Using apply and tapply to perform EDA

# make sure the th cbb.csv file in your working directory

# You read more about the column names here: https://www.kaggle.com/andrewsundberg/college-basketball-dataset?select=cbb.csv

# Step 1: Read in the csv file and assign it to the variable basketball
basketball <- read.csv('cbb.csv')

# Step 2: print the first 5 rows of the basketball dataframe using the head() function
head(basketball)


# Step 3: Subset the data-frame 

# Part a) only include the top 1000 rows and assign it to the variable basketball_shortened
basketball_shortened <- basketball[1:1000,]


# Part b) using basketball_shortened keep only the interested_columns
interested_columns <- c('TEAM', 'CONF', 'YEAR', 'G', 'W', 'X2P_O', 'X3P_O')
basketball_shortened <- basketball_shortened[, interested_columns]

# Step 4: Find the mean games played, games won, Two-Point Shooting Percentage(X2P_O), 
# and Three-Point Shooting Percentage ('X3P_O') using the apply() function 

col_to_find_mean <- c('G', 'W', 'X2P_O', 'X3P_O')

apply(basketball_shortened[, col_to_find_mean], MARGIN = 2, mean)


# Step 5: Using the tapply function compute the following

# a) The Average Two-Point Shooting Percentage(2P_O) for each team
tapply(basketball_shortened$X2P_O, basketball_shortened$TEAM, mean)

# b) The Average Three-Point Shooting Percentage(2P_O) for each year
tapply(basketball_shortened$X3P_O, basketball_shortened$YEAR, mean)

# c) The Average Two-Point Shooting Percentage(2P_O) for each conference and year
tapply(basketball_shortened$X2P_O, list(basketball_shortened$CONF, basketball_shortened$YEAR), mean)


# d) Optional/Challenge: 
# Compute the percentage of games won by each team and then find the average win percentage for each team

basketball_shortened$win_perc <- (basketball_shortened$W / basketball_shortened$G) * 100
win_perc_teams <- tapply(basketball_shortened$win_perc, basketball_shortened$TEAM, mean)
win_perc_teams


# Which team has the highest and lowest win percentage over time

sort(win_perc_teams)

# Ans: MAINE has the lowest win percentage and Gonzaga has the highest win percentage 



