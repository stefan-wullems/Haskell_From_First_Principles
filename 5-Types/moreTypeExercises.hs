module DetermineTheType where

-- 1)
v1 :: Num a => a
v1 = (* 9) 6

-- 2)
v2 :: Num a => (a, String)
v2 = head [(0,"doge"),(1,"kitteh")]

-- 3)
v3 :: (Integer, String)
v3 = head [(0 :: Integer ,"doge"),(1,"kitteh")]

-- 4)
v4 :: Bool
v4 = if False then True else False

-- 5)
v5 :: Int
v5 = length [1, 2, 3, 4, 5]

-- 6)
v6 :: Bool
v6 = length [1, 2, 3, 4] > length "TACOCAT"

