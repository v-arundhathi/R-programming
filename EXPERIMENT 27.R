# Load the dataset
data("women")

# Define the height ranges and labels
height_ranges <- cut(women$height, breaks = c(50, 60, 70, 80), labels = c("Short", "Average", "Tall"))

# Create a factor corresponding to height
height_factor <- factor(height_ranges)

# Print the first few rows of the factor
print(height_factor)
