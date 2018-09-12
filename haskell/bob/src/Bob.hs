module Bob (responseFor) where

import Data.Char (toUpper, toLower, isSpace)
import Data.List (dropWhileEnd)

responseFor :: String -> String
responseFor xs
  | isSilence xs'          = "Fine. Be that way!"
  | isForcefulQuestion xs' = "Calm down, I know what I'm doing!"
  | isShouting xs'         = "Whoa, chill out!"
  | isQuestion xs'         = "Sure."
  | otherwise              = "Whatever."
  where xs'                   = trim xs
        trim                  = dropWhile isSpace . dropWhileEnd isSpace
        isForcefulQuestion xs = isShouting xs && isQuestion xs
        isShouting xs         = xs == map toUpper xs
                                && not (map toUpper xs == map toLower xs)
        isSilence             = null
        isQuestion xs         = last xs == '?'
