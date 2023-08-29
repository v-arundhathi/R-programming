# Load the dataset
data("women")

# Create a factor corresponding to height
height_factor <- factor(women$height, labels = c("Short", "Average", "Tall"))

# Print the first few rows of the factor
print(height_factor)
