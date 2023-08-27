# Create some sample objects
x <- 10
y <- "Hello, world!"
z <- c(1, 2, 3)

# List of objects in memory
objects <- ls()

# Display details of each object
for (obj in objects) {
  cat("Details of object:", obj, "\n")
  str(get(obj))
  cat("\n")
}
