module StdDev where

avg :: (Fractional a) => [a] -> a
avg list = sum list / realToFrac (length list)

square :: (Num a) => a -> a
square a = a * a

stdev :: Floating a => [a] -> a
stdev list = sqrt (avg (map (\x -> square (x - initialAvg)) list))
  where initialAvg = avg list  
          