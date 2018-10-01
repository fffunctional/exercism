module SumOfMultiples (sumOfMultiples) where

import Data.Set (fromDistinctAscList, unions)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum $
  unions [fromDistinctAscList [0,f..limit-1] | f <- factors, f > 0]
