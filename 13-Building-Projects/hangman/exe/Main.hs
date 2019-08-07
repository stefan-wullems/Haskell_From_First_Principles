module Main where

import Game
import Words 
import Hangman (mkHangman)

main :: IO ()
main = do
  word <- selectWord
  runGame (mkHangman word)
  
