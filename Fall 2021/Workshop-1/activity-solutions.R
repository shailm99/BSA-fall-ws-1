# Workshop 1 - Activity 


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



# Optional/Challenge: 
# Compute the percentage of games won by each team and then find the average win percentage for each team

basketball_shortened$win_perc <- (basketball_shortened$W / basketball_shortened$G) * 100


# Which team has the highest and lowest win percentage over time

basketball_shortened[order(basketball_shortened$win_perc),]

# Ans: San Jose St. in 2015 has the lowest win percentage and 
basketball_shortened[order(basketball_shortened$win_perc, decreasing = TRUE),]

# Kentucky in 2015 has the highest win percentage 

