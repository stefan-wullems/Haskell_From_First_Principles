foldBool1 :: a -> a -> Bool -> a
foldBool1 x y flag
  | flag == True = x
  | otherwise    = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y flag = case flag of
  True  -> x
  False -> y
 
g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x, y) 