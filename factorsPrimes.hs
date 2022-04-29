here_We_find_factors :: Int -> [Int] 
here_We_find_factors n = [x | x <- [1..n], n `mod` x == 0] 
prime_number :: Int -> Bool 
prime_number n = here_We_find_factors n == [1,n] 
primes_number :: Int -> [Int] 
primes_number n = [x | x <- [2..n], prime_number x] 
main :: IO () 
main =  do 
print(here_We_find_factors 100) 
print(prime_number 100) 
print(primes_number 100)
