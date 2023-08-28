rows <- 5
columns <- 3

# Create a sequence of even integers greater than 50
even_integers <- seq(from = 52, by = 2, length.out = rows * columns)

# Reshape the sequence into a 5x3 array
even_integers_array <- matrix(even_integers, nrow = rows, ncol = columns)

print(even_integers_array)
