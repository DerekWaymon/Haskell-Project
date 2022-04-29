goldbach a = filter (\(x,y) -> isPrime x && isPrime y) $
                     map (\e -> (e, a - e)) [3,5..a `div` 2]
 where
 factors a = filter (isFactor a) [2..a-1]
 isFactor a b = a `mod` b == 0
 isPrime a = null $ factors a

main = do
putStr "We found "
putStr . show $ length(goldbach 100)
putStr " Goldbach pairs for 100.\n"
putStr . show $ goldbach 100
putStr ".\n"
 
--command: “goldbach [value]”