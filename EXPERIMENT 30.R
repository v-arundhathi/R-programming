# Load necessary libraries
library(dplyr)
library(tidyr)
library(datasets)  # To load the built-in iris dataset

# Load the iris dataset
data(iris)

# Create a pivot table based on Species and Sepal.Length
pivot_table <- iris %>%
  mutate(Sepal.Length.Cate = cut(Sepal.Length, breaks = c(4, 5, 6, 7))) %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(Count = n_distinct(Sepal.Length))

# Print the pivot table
print(pivot_table)
