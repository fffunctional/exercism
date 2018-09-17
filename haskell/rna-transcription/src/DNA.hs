module DNA (toRNA) where

import Control.Monad

toRNA :: String -> Maybe String
toRNA =  sequence . map nucleotideComplement

nucleotideComplement :: Char -> Maybe Char
nucleotideComplement 'G' = Just 'C'
nucleotideComplement 'C' = Just 'G'
nucleotideComplement 'T' = Just 'A'
nucleotideComplement 'A' = Just 'U'
nucleotideComplement  _  = Nothing
