module TheFearfulSymmetry where

split :: Char -> String ->  [String]
split char str = result
  where
    go acc "" = acc
    go acc curr = go (acc ++ [takeWhile (/= char) curr]) $ (dropWhile (== char) . dropWhile (/= char)) curr
    result = go [] str

firstSen :: String
firstSen = "Tyger Tyger, burning bright\n"
secondSen :: String
secondSen = "In the forests of the night\n"
thirdSen :: String
thirdSen = "What immortal hand or eye\n"
fourthSen :: String
fourthSen = "Could frame thy fearful symmetry?"
sentences :: String
sentences = firstSen ++ secondSen
    ++ thirdSen ++ fourthSen

myWords :: String -> [String]
myWords = split ' '

myLines :: String -> [String]
myLines = split '\n'
