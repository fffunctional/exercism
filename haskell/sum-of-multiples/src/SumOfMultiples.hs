module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum $ filter isMultiple [1..limit-1]
  where isMultiple n = any (\f -> n `mod` f == 0) factors
