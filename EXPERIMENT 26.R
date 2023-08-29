# Load the dataset
data("airquality")

# Check if it's a data frame
if (is.data.frame(airquality)) {
  cat("airquality is a data frame.\n")
} else {
  cat("airquality is not a data frame.\n")
}

# Order the data frame by the first and second columns
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]

# Remove the variables 'Solar.R' and 'Wind'
filtered_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c("Solar.R", "Wind"))]

# Display the resulting data frame
print(filtered_airquality)
