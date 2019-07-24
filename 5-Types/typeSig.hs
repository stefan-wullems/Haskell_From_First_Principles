module TypeSig where

firstEl :: [a] -> a
firstEl [] = undefined
firstEl (x:_) = x

biggerThan :: Ord a => a -> a -> Bool
biggerThan = (>)

second :: (a, b) -> b
second = snd