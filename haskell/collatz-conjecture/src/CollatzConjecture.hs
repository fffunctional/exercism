module CollatzConjecture (collatz) where

import Data.List (genericLength)

collatz :: Integer -> Maybe Integer
collatz n
  | n < 1 = Nothing
  | otherwise = Just (numberOfSteps n)
  where numberOfSteps = genericLength . takeWhile (/= 1) . iterate f
        f n = if even n then n `div` 2 else n*3+1

recursiveCollatz :: Integer -> Maybe Integer
recursiveCollatz n
  | n < 1 = Nothing
  | otherwise = Just (collatz' n)

collatz' n
  | n == 1 = 0
  | even n = 1 + collatz' (n `div` 2)
  | otherwise = 2 + collatz' ((3*n+1) `div` 2)
