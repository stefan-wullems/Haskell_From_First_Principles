module TypeKwonDo where

-- 1)
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h num = g (f num) 

-- 2)
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e a = w (q a)

-- 3)
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform tup = (xz (fst tup), yz (snd tup))

-- 4)
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge one two x = fst (two (one x))