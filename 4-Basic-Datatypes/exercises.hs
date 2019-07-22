module Exercises where


x :: Int
x = div 6 (length ([1,2,3] :: [Integer]))

isPalindrome :: Eq a => [a] -> Bool
isPalindrome str = reverse str == str

absolute :: (Ord p, Num p) => p -> p
absolute num = if num > 0 then negate num else num 

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tup1 tup2 = ((snd tup1, snd tup2), (fst tup1, fst tup2))

b :: Int -> Int -> Int
b = (+)

fn :: Foldable t => t a -> Int
fn xs = w `b` 1
  where w = length xs

identity :: a -> a
identity thing = thing

first :: (a, b) -> a
