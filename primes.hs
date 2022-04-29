--return list of factors
factor :: Int -> [Int]
factor n = [x | x <- [1..n], n `mod` x == 0]

--return values that are prime
isprime :: Int -> Bool 
isprime n = factor n == [1,n]

--return a list of prime numbers up to a specified value
primes :: Int -> [Int] 
primes n = [x | x <- [2..n], isprime x]

main = do
value <- getLine
let x = (read value :: Int)
print (primes x)

--command: primes [value]