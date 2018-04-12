source("http://www.openintro.org/stat/data/cdc.R")

# 1. Make a scatterplot of weight versus desired weight.Describe the relationship between these two variables.
plot(cdc$weight, cdc$wtdesire)

# There is a linear relationship between the weight vs desired weight, 
# while the range is densely concentrated between 100 to 300 & sparsely concentrated between 300 to 400
# Also, there are very few outliers


# 2. Creating a new variable "wdiff" using the below code
# If an observation wdiff is 0, what does this mean about the person's weight and desired weight. 
# What if wdiff is positive or negative?
wdiff = cdc$wtdesire - cdc$weight
View(wdiff)

# Type of Data in wdiff is > Integer
# If an observation is 0, it means that there is no difference between the persons' weight & desired weight
# meaning weight = wtdesire
# Positive wdiff means >> the person is overweight & desires to cut down their weight
# Negative wdiff means >> the person is underweight & desires to increase their weight

# 3. Distribution of wdiff using scatter plot & histogram ->
plot(wdiff)
hist(wdiff)

# The scatter plot is centered at 0, with a very few outliers.
# Also, The histogram shows that the plot is centered at 0 & is Unimodal but a bit skewed to the right
# This means that most number of the people feel that their weight is just about right, whereas a significant number of people feel that they need to cut down their weight

# 4. Plot a side-by-side box plot with respect to weight and gender ->
boxplot(cdc$weight ~ cdc$gender)

summary(cdc$weight)

# Here we can observe that more number of men desire to cut down on weight as compared to women
# mean_male is greater tha mean_female
# Also, males weigh more than females on an average

# 5. Finding mean & sd for "weight"

mean(cdc$weight)
sd(cdc$weight)

# Plotting the box plot for weight
boxplot(cdc$weight)

# This plot suggests that, the distribution is normal & hence, 68% of the weights are within one sd of the mean