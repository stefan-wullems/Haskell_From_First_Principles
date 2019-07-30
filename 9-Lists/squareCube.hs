module SquareCube where

squareCube :: Integer -> [(Integer, Integer)]
squareCube n = [(x^2,x^3) | x <- [1..n], x < 3]

g :: Int
g = length (filter (\x -> rem x 3 == 0) [1..30])


remArticles :: String -> [String]
remArticles = filter (\x -> not (x == "the" || x == "an" || x == "a")) . words

