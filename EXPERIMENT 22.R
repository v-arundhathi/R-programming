array1 <- matrix(1:9, nrow = 3)
array2 <- matrix(10:18, nrow = 3)
array3 <- matrix(19:27, nrow = 3)

# Combine the arrays as specified
combined_array <- rbind(array1[1, ], array2[1, ], array3[1, ])


print(combined_array)
