module DoesItCompile where

-- 1)
bigNum :: Integer -> Integer
bigNum = (^) 5

wahoo :: Integer
wahoo = bigNum 10

-- 2)
x :: Show a => a -> IO ()
x = print

y :: IO ()
y = print "woohoo!"

z :: IO ()
z = x "hello world"

-- 3)
a :: Integer
a = 12 + b 10

b :: Num a => a -> a
b c = 10000 * c

