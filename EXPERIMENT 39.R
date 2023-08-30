# Load required libraries
library(ggplot2)

# Load the USArrests dataset
data("USArrests")

# (i) a. Explore the summary of the dataset
summary(USArrests)
sapply(USArrests, class)
sapply(USArrests, length)

# b. Print the state which saw the largest total number of rape
state_max_rape <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", state_max_rape, "\n")

# c. Print the states with the max & min crime rates for murder
state_max_murder <- rownames(USArrests)[which.max(USArrests$Murder)]
state_min_murder <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("State with the highest crime rate for murder:", state_max_murder, "\n")
cat("State with the lowest crime rate for murder:", state_min_murder, "\n")

# (ii) a. Find the correlation among the features
correlation_matrix <- cor(USArrests)
print(correlation_matrix)

# b. Print the states which have assault arrests more than median of the country
median_assault <- median(USArrests$Assault)
states_higher_than_median <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests more than median:", states_higher_than_median, "\n")

# c. Print the states in the bottom 25% of murder
murder_25th_percentile <- quantile(USArrests$Murder, 0.25)
states_bottom_25_percent <- rownames(USArrests)[USArrests$Murder < murder_25th_percentile]
cat("States in the bottom 25% of murder:", states_bottom_25_percent, "\n")

# (iii) a. Create histogram and density plot of murder arrests by US state
ggplot(USArrests, aes(x = Murder)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black", alpha = 0.6) +
  geom_density(color = "red") +
  labs(title = "Histogram and Density Plot of Murder Arrests", x = "Murder", y = "Frequency")

# b. Create a scatter plot with murder arrest rate, urban population proportion, and assault arrest rate
ggplot(USArrests, aes(x = Murder, y = UrbanPop, color = Assault)) +
  geom_point() +
  labs(title = "Relationship between Murder Arrest Rate, Urban Population Proportion, and Assault Arrest Rate",
       x = "Murder Arrest Rate", y = "Urban Population Proportion")

# c. Create a bar graph to show the murder rate for each of the 50 states
ggplot(USArrests, aes(x = reorder(row.names(USArrests), Murder), y = Murder)) +
  geom_bar(stat = "identity", fill = "blue", color = "black") +
  coord_flip() +
  labs(title = "Murder Rate for Each State", x = "State", y = "Murder Rate")
