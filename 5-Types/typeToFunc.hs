module TypeToFunc where

i :: a -> a
i x = x

c :: a -> b -> a
c x _ = x

c'' :: b -> a -> b
c'' x _ = x

c' :: a -> b -> b
c' _ y = y

r :: [a] -> [a]
r = take 3  

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB x = bToC (aToB x)

a :: (a -> c) -> a -> a
a _ x = x

a' :: (a -> b) -> a -> b
a' aToB = aToB