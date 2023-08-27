num_samples <- 5 
mean_val <- 0        
sd_val <- 1         

random_numbers <- rnorm(num_samples, mean = mean_val, sd = sd_val)

value_counts <- table(random_numbers)

print("Occurrences of each value:")
print(value_counts)