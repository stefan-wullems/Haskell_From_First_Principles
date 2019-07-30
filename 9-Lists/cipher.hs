module Cipher where

caesar :: Integer -> String -> String
caesar = metaCaesar (\char -> if char == 'z' then 'a' else succ char)

uncaesar :: Integer -> String -> String
uncaesar = metaCaesar (\char  -> if char == 'a' then 'z' else pred char)

metaCaesar :: (Char -> Char) -> Integer -> String -> String
metaCaesar _ 0 string = string
metaCaesar f n string = map (applyTimes n f) string

applyTimes :: (Eq t1, Num t1) => t1 -> (t2 -> t2) -> t2 -> t2
applyTimes 1 f val = f val
applyTimes n f val = applyTimes (n - 1) f (f val)