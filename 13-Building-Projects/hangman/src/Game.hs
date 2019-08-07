module Game (runGame) where

import System.Exit (exitSuccess)
import Control.Monad (forever)
import Data.Maybe (isJust)
import Data.List (nub)
import Hangman (Hangman (..), handleGuess)

maxGuesses :: Int
maxGuesses = 7

justs :: [Maybe a] -> [Maybe a]
justs = filter isJust

gameOver :: Hangman -> IO ()
gameOver (Hangman wordToGuess guessedRight guessed) =
  if (length guessed - (length . nub . justs) guessedRight) > maxGuesses 
    then
      do
        putStrLn "You lose!"
        putStrLn $ "The word was: " ++ wordToGuess
        exitSuccess
    else return ()

gameWin :: Hangman -> IO ()
gameWin (Hangman _ filledInSoFar _) =
  if all isJust filledInSoFar
    then
      do
        putStrLn "You win!"
        exitSuccess
    else return ()

runGame :: Hangman -> IO ()
runGame hangman = forever $ do
  gameOver hangman
  gameWin hangman
  putStrLn $ "Current hangman is: " ++ show hangman
  putStr "Guess a letter: "
  guess <- getLine
  case guess of
    [c] -> handleGuess hangman c >>= runGame
    _ -> putStrLn "Your guess must\
    \ be a single character"