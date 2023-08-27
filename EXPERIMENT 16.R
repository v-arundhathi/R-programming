
matrix_rows <- matrix(1:20, nrow = 5, byrow = TRUE)
rownames(matrix_rows) <- c("Row 1", "Row 2", "Row 3", "Row 4", "Row 5")
colnames(matrix_rows) <- c("Col 1", "Col 2", "Col 3", "Col 4")

matrix_3x3_rows <- matrix(21:29, nrow = 3, byrow = TRUE)
rownames(matrix_3x3_rows) <- c("R1", "R2", "R3")
colnames(matrix_3x3_rows) <- c("C1", "C2", "C3")

matrix_2x2_cols <- matrix(c("A", "B", "C", "D"), nrow = 2, byrow = FALSE)
rownames(matrix_2x2_cols) <- c("Row 1", "Row 2")
colnames(matrix_2x2_cols) <- c("Col 1", "Col 2")

cat("5x4 Matrix filled by rows:\n")
print(matrix_rows)

cat("\n3x3 Matrix filled by rows:\n")
print(matrix_3x3_rows)

cat("\n2x2 Matrix filled by columns:\n")
print(matrix_2x2_cols)

