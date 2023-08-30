# Load required libraries
library(ggplot2)

# a. Draw a Bar chart to show details of "Survived" on the Titanic based on passenger Class
ggplot(Titanic, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival on Titanic by Passenger Class", x = "Passenger Class", y = "Count", fill = "Survived")

# b. Modify the above plot based on gender of people who survived
ggplot(Titanic, aes(x = Class, fill = factor(Survived), group = Sex)) +
  geom_bar(position = "dodge") +
  labs(title = "Survival on Titanic by Passenger Class and Gender", x = "Passenger Class", y = "Count", fill = "Survived") +
  facet_grid(Sex ~ ., scales = "free_y")

# c. Draw histogram plot to show distribution of feature "Age"
ggplot(Titanic, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(title = "Distribution of Age on Titanic", x = "Age", y = "Frequency")
