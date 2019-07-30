module DbProcessing where

import Data.Time
import Data.Maybe

data DbItem = DbString String
                    | DbNumber   Integer
                    | DbDate   UTCTime
                    deriving (Eq, Ord, Show)

theDatabase :: [DbItem]
theDatabase = 
    [ DbDate (UTCTime
                      (fromGregorian 1911 5 1)
                      (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbString "Hello, world!"
    , DbDate (UTCTime
                      (fromGregorian 1921 5 1)
                      (secondsToDiffTime 34123))
    ]

getDbItem selector = foldr f []
  where 
    f x y = fn (selector x)
      where
        fn Nothing = y
        fn (Just item) = item : y

mostRecent :: [DbItem] -> UTCTime
mostRecent = (foldr max (UTCTime 
                                       (fromGregorian 0 0 0) 
                                       (secondsToDiffTime 0))) 
                     . getUTCs

getUTCs db = getDbItem getUTC db

getUTC (DbDate time) = Just time
getUTC _ = Nothing

getNums db = getDbItem getNum db

getNum (DbNumber num) = Just num
getNum _ = Nothing



