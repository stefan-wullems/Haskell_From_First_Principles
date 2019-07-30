recSum :: (Eq a, Num a) => a -> a
recSum 0 = 0
recSum n = (recSum n-1) + n

recMult :: (Integral a) => a -> a -> a
recMult x 0 = 0
recMult x y = x + recMult x (y - 1)