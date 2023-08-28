vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)

matrix_data <- cbind(vector1, vector2)

array_data <- array(matrix_data, dim = c(3, 3, 2))

print(array_data)
