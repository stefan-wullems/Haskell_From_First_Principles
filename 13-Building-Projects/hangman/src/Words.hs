module Words (selectWord) where

import System.Random (randomRIO)

newtype WordList = WordList [String] deriving (Eq, Show)

minWordLength :: Int
minWordLength = 5

maxWordLength :: Int
maxWordLength = 9

allWords :: IO WordList
allWords = do
  dict <- readFile "data/dict.txt"
  return (WordList (lines dict))

acceptableWordLength :: Int -> Bool
acceptableWordLength len = len >= minWordLength && len <= maxWordLength

acceptableWords :: WordList -> WordList
acceptableWords (WordList wordList) = WordList (filter (acceptableWordLength.length) wordList)

gameWords :: IO WordList
gameWords = acceptableWords <$> allWords

randomWord :: WordList -> IO String
randomWord (WordList words) = do
  randomIndex <- randomRIO (0, length words - 1)
  return (words !! randomIndex)

selectWord :: IO String
selectWord = gameWords >>= randomWord