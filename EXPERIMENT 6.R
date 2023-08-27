# Function to find all prime numbers up to a given limit using Sieve of Eratosthenes
sieve_of_eratosthenes <- function(limit) {
  primes <- logical(limit + 1)
  primes[1:2] <- FALSE
  
  for (i in 2:sqrt(limit)) {
    if (primes[i]) {
      primes[i^2:(limit + 1):i] <- FALSE
    }
  }
  
  return(which(primes))
}

# Specify the upper limit
upper_limit <- 100

# Find and display all prime numbers up to the upper limit
prime_numbers <- sieve_of_eratosthenes(upper_limit)
cat("Prime numbers up to", upper_limit, ":", prime_numbers, "\n")
