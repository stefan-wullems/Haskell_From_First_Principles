module Exercises1 where

identity :: a -> a
identity item = item


get5thElement :: [a] -> [a]
get5thElement arr = take 1 (drop 4 arr) 

getAllAfter9 :: [a] -> [a]
getAllAfter9 = drop 9

thirdElement :: [a] -> a
thirdElement arr = arr !! 2 

getSubSection :: [a] -> Int -> Int -> [a]
getSubSection arr from to = take (to + 1 - from) (drop from arr)

str :: String
str = "Curry is awesome!"

main :: IO()
main = print (getSubSection str 9 17 ++ getSubSection str 5 8 ++ take 5 str)