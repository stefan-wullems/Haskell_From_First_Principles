module LetToWhereExercises where

-- 1
a         = x * 3 + y
  where x = 3
        y = 1000

-- 2
b   = x * 5 
  where 
    y = 10      
    x = 10 * 5 + y

-- 3
c = z / x + y
  where 
    x = 7    
    y = negate x
    z = y * 10

        