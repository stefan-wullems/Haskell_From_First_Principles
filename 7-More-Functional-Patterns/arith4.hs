module Arith4 where

roundTrip :: (Show a, Read b) => a -> b
roundTrip =  read . (show :: Show a => a -> a)

main = do
  print (roundTrip 4)
  print (id 4)

