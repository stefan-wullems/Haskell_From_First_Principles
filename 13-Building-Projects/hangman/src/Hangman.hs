module Hangman (mkHangman, Hangman (..), handleGuess) where

import Data.List (intersperse)
import Data.Char (toLower) 

data Hangman = Hangman
                  String -- words that is being guessed
                  [Maybe Char] -- the characters filled so far
                  String -- the letters we've guessed so far

instance Show Hangman where
  show (Hangman _ guessedRight guessed) =
      intersperse ' ' (fmap renderHangman guessedRight)
      ++ " Guessed so far: " ++ guessed

toNothing :: a -> Maybe a
toNothing = const Nothing

hide :: [a] -> [Maybe a]
hide = map toNothing

mkHangman :: String -> Hangman
mkHangman word = Hangman word (hide word) []

guessedCorrectly :: Hangman -> Char -> Bool
guessedCorrectly (Hangman word _ _) guess = guess `elem` word

alreadyGuessed :: Hangman -> Char -> Bool
alreadyGuessed (Hangman _ _ guesses) guess = guess `elem` guesses

renderHangman :: Maybe Char -> Char
renderHangman Nothing = '_'
renderHangman (Just char) = char

fillInCharacter :: Hangman -> Char -> Hangman
fillInCharacter hangman@(Hangman word found guessed) guess =
  Hangman word newFound (guess : guessed)
  where
    zipper guessed wordChar guessChar =
      if toLower wordChar == toLower guessed
      then Just wordChar
      else guessChar
    newFound =
      zipWith (zipper guess) word found

handleGuess :: Hangman -> Char -> IO Hangman
handleGuess hangman guess = do
  putStrLn $ "Your guess was: " ++ [guess]
  case (guessedCorrectly hangman guess
    , alreadyGuessed hangman guess) of
    (_, True) -> do
      putStrLn "You already guessed that\
      \ character, pick something else!"
      return hangman
    (True, _) -> do
      putStrLn "This character was in the word,\
      \ filling in the word accordingly"
      return (fillInCharacter hangman guess)
    (False, _) -> do
      putStrLn "This character wasn't in\
      \ the word, try again."
      return (fillInCharacter hangman guess)

