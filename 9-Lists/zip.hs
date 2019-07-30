module Zip where

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (x': xs') = (x, x') : myZip xs xs'  

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith = zipWith