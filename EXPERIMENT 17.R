values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)

dims <- c(3, 2, 2)  # Creating a 3x2x2 array

# Naming the dimensions
dim_names <- list(
  c("Dim1_1", "Dim1_2", "Dim1_3"),
  c("Dim2_1", "Dim2_2"),
  c("Dim3_1", "Dim3_2")
)

arr <- array(values, dim = dims, dimnames = dim_names)

print(arr)
