module Char where

import Data.Char

filterUpper :: String -> String
filterUpper = filter isUpper

capitalize :: String -> String
capitalize [] = []
capitalize [x] = [toUpper x]
capitalize (x:xs) = toUpper x : xs

shout :: String -> String
shout [] = []
shout xs = map toUpper xs ++ "!"

firstToUpper :: String -> Char
firstToUpper = toUpper . head

