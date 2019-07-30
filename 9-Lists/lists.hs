module Lists where

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs

myElem :: Eq t => t -> [t] -> Bool
myElem _ [] = False
myElem element (x:xs) = x == element || myElem element xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse list = foldl (\ acc x ->  x : acc) [] list

squish :: [[a]] -> [a]
squish = concat

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = myExtremumBy GT

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = myExtremumBy LT 

myExtremumBy :: Ordering -> (a -> a -> Ordering) -> [a] -> a
myExtremumBy _ _ [] = error "err"
myExtremumBy _ _ [x] = x 
myExtremumBy res comp (x:xs) = go x comp xs
  where 
    go l _ [] = l
    go l f (x':xs') 
        | f x' l == res = go x' f xs'
        | otherwise     = go l f xs'

maximum :: (Ord a) => [a] -> a
maximum = myMaximumBy compare

minimum :: (Ord a) => [a] -> a
minimum = myMinimumBy compare