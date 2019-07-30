module ErrorFolds where

a = foldr (++) "" ["woot", "WOOT", "woot"]
b = foldr max 'a' "fear is the little death"
c = foldr (\x y -> and [x, y]) True [False, True]
d = foldr (||) False [False, True]
e = foldl (\x  y->  x ++ show y) "" [1..5]
f = foldr const 0 [1..5]
g = foldr const ' ' "tacos"
h = foldl (flip const) ' ' "burritos"
i = foldl (flip const) 0 [1..5]