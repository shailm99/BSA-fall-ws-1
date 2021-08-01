# Workshop 1 - Activity 


# make sure the th cbb.csv file in your working directory

# You read more about the column names here: https://www.kaggle.com/andrewsundberg/college-basketball-dataset?select=cbb.csv

# Step 1: Read in the csv file and assign it to the variable basketball


# Step 2: print the first 5 rows of the basketball dataframe using the head() function



# Step 3: Subset the data-frame 

# Part a) only include the top 1000 rows and assign it to the variable basketball_shortened


# Part b) using basketball_shortened keep only the interested_columns
interested_columns <- c('TEAM', 'CONF', 'YEAR', 'G', 'W', 'X2P_O', 'X3P_O')


# Step 4: Find the mean games played, games won, Two-Point Shooting Percentage(X2P_O), 
# and Three-Point Shooting Percentage ('X3P_O') using the apply() function 

col_to_find_mean <- c('G', 'W', 'X2P_O', 'X3P_O')



# Step 5: Using the tapply function compute the following

# a) The Average Two-Point Shooting Percentage(2P_O) for each team

# b) The Average Three-Point Shooting Percentage(2P_O) for each year

# c) The Average Two-Point Shooting Percentage(2P_O) for each conference and year


# d) Optional/Challenge: 
# Compute the percentage of games won by each team and then find the average win percentage for each team

basketball_shortened$win_perc <- (... / ...) * 100 # fill in the relevant columns (replace the ...)
win_perc_teams <- tapply(...) # fill in the blank (replace the ...)
win_perc_teams


# Which team has the highest and lowest win percentage over time

# hint: use the sort function on the win_perc_teams variable


# Ans:
