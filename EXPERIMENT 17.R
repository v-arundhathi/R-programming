# Input vector of values
values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)

# Input vector of dimensions
dims <- c(3, 2, 2)  # 3 rows, 2 columns, 2 tables

# Names for each dimension
dim_names <- c("Rows", "Columns", "Tables")

# Create an array with specified dimensions and names
array_with_names <- array(values, dim = dims, dimnames = list(NULL, NULL, dim_names))

# Print the array
print(array_with_names)
