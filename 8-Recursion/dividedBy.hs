module DividedBy where

data DividedResult = Result Integer
                   | DividedByZero deriving Show


dividedBy :: Integral a => a -> a -> DividedResult
dividedBy n 0 = DividedByZero
dividedBy n d = Result quotient
  where
    go count n d 
        | n < 0     = negate (go 0 (negate n) d)
        | d < 0     = negate (go 0 n (negate d))
        | n >= d    = go (count + 1) (n - d) d
        | otherwise = count
    quotient = go 0 n d