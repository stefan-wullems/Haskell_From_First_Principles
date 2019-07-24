module Exercises2 where

parametricPoly1 :: a -> a
parametricPoly1 x = x

parametricPoly2a :: a -> a -> a
parametricPoly2a a b = a

parametricPoly2b :: a -> a -> a
parametricPoly2b a b = b

f :: Num a => a -> a -> a
f x y = x + y + 3