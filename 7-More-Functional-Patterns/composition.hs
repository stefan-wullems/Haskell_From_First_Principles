module Composition where

negateSum :: Num a => [a] -> a
negateSum = negate . sum