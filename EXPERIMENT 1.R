# Taking input from the user
name <- readline("Enter your name: ")
age <- as.numeric(readline("Enter your age: "))

# Displaying the values
cat("Your name is:", name, "\n")
cat("Your age is:", age, "\n")

# Printing R version
cat("R version:", R.version$version.string, "\n")
