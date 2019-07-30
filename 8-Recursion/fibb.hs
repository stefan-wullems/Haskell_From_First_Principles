module Fibonacci where

fibb :: Integer -> Integer
fibb 0 = 0
fibb 1 = 1
fibb n = fibb(n-1) + fibb(n-2)