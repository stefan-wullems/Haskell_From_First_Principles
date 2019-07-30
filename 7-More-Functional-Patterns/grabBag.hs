module GrabBag where

addOneIfOdd n = case odd n of
  True -> (\n -> n + 1) n
  False -> n

addFive = (\x -> \y -> (if x > y then y else x) + 5)

mflip f x y = f y x

k :: (a, b) -> a
k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)

f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f = (a, _, c) (d, _, f) -> ((a, d), (c, f))