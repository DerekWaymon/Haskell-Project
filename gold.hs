goldbach a = filter (\(x,y) -> isPrime x && isPrime y) $
                     map (\e -> (e, a - e)) [3,5..a `div` 2]
 where
 factors a = filter (isFactor a) [2..a-1]
 isFactor a b = a `mod` b == 0
 isPrime a = null $ factors a
 
-–command: “goldbach [value]”