module WhereAndLet where

printInc1 x = print (x + y)
             where y = 5

printInc2 x = let y = 5
              in print (x + y)
