module FoldRTest where

uselessFoldr :: [a] -> [a]
uselessFoldr = foldr (:) []