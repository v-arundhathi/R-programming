vector_data <- c(1, 2, 3)

matrix_data <- matrix(4:9, nrow = 2)

sample_function <- function(x) {
  return(x^2)
}
my_list <- list(
  my_vector = vector_data,
  my_matrix = matrix_data,
  my_function = sample_function
)

print(my_list)
