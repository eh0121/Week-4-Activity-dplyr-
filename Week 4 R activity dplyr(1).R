#Week 4: dplyr package

#Task: Write the code to get a dataset from Base R: ChickWeight
#and save it as a dataframe with a new name that includes your first name
EdwardChickWeight <- ChickWeight

#See the top rows of the data
#TASK: Write the code to see the top rows of the data
head(EdwardChickWeight)

#Install and call the package dplyr
#TASK: Write the code to install and call dplyr
install.packages("dplyr")
library(dplyr)

#Let's just see the weight and Time columns
#Task: Write the code to 'select' just the weight and Time columns 
#(hint: use the 'select' function)
select(EdwardChickWeight, weight, Time)

#Let's name the dataset with just the two columns, weight and Time
#TASK: Write the code to save the two columns as a new dataframe
#and give it a new name
NewDataFrame <- select(EdwardChickWeight, weight, Time)

#Let's get rid of the Time column in the new dataframe created above
#TASK: Write the code that deselects the Time column
#(hint: use the 'select' function to not select a -column)
select(NewDataFrame, -Time)

#Let's rename a column name
#TASK: Write the code that renames 'weight' to 'ounces'
NewDataFrame <- rename(NewDataFrame, ounces = weight)

#Let's make a new dataframe with the new column name
#TASK: Write the code that names a new dataframe that includes the 'ounces' column
NewDataFrameTwo <- NewDataFrame

#Let's 'filter' our dataframe to only those with a 1 in the Chick column
#TASK: Write the code that includes only rows where Chick = 1
filter(NewDataFrameTwo, Chick == 1)

#Let's 'group' our data by Diet
#TASK: Write the code to group the data by Diet (hint: group_by)
group_by(EdwardChickWeight, Diet)

#Task: add one of the other codes (not in the tasks above) 
#you learned about from the dplyr package

# Create new column with weight in kg 
EdwardChickWeight <- mutate(EdwardChickWeight, weight_kg = weight/1000)

# Save dataframe with new column
EdwardChickWeight <- EdwardChickWeight 

# Group by Diet and Time
by_diet_time <- group_by(EdwardChickWeight, Diet, Time)

# Summarize mean of weight_kg
summarize(by_diet_time, mean_kg = mean(weight_kg))