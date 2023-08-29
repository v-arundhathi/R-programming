set.seed(123)

random_letters <- sample(LETTERS, size = 20, replace = TRUE)
random_factor <- factor(random_letters)

sampled_levels <- sample(levels(random_factor), size = 5)

print(sampled_levels)

