columns <- 4
rows <- 3
tables <- 2

# Create an array using the specified dimensions
my_array <- array(1:(columns * rows * tables), dim = c(rows, columns, tables))

print(my_array)
