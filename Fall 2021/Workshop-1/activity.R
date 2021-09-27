# Workshop 1 - Activity 


# make sure the th cbb.csv file in your working directory

# You read more about the column names here: https://www.kaggle.com/andrewsundberg/college-basketball-dataset?select=cbb.csv

# Step 1: Read in the csv file and assign it to the variable basketball


# Step 2: print the first 5 rows of the basketball dataframe using the head() function



# Step 3: Subset the data-frame 

# Part a) only include the top 1000 rows and assign it to the variable basketball_shortened


# Part b) using basketball_shortened keep only the interested_columns
interested_columns <- c('TEAM', 'CONF', 'YEAR', 'G', 'W', 'X2P_O', 'X3P_O')




#Optional/Challenge: 
# Compute the percentage of games won by each team

basketball_shortened$win_perc <- (... / ...) * 100 # fill in the relevant columns (replace the ...)


# Which team has the highest and lowest win percentage over time

# hint: use the order function on the win_perc variable and index by this order


# Ans:

# Bonus Question: Find a dataset on Kaggle that you are interested in, download it and read it into R.

# print out the first 5 rows

