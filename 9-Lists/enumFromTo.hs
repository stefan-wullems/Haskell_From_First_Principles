module EnumFromTo where

eftBool :: Bool -> Bool -> [Bool]
eftBool = enumerate

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = enumerate

eftInt :: Int -> Int -> [Int]
eftInt = enumerate

eftChar :: Char -> Char -> String
eftChar = enumerate

enumerate :: (Enum a, Ord a) => a -> a -> [a]
enumerate from to = list
  where
    go f t acc
      | f > t     = []
      | f == t    = acc ++ [f]
      | otherwise = go (succ f) t (acc ++ [f])
    list = go from to []

