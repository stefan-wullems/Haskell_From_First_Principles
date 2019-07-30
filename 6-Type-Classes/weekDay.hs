module WeekDay where

data WeekDay =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun deriving Show

data Date =
  Date WeekDay Int deriving (Show, Ord)

instance Eq WeekDay where
  (==) Mon Mon   = True
  (==) Tue Tue   = True
  (==) Weds Weds = True
  (==) Thu Thu   = True
  (==) Fri Fri   = True
  (==) Sat Sat   = True
  (==) Sun Sun   = True
  (==) _ _       = False

instance Eq Date where
  (==) (Date weekDay dayOfMonth)
       (Date weekDay' dayOfMonth') =
    weekDay == weekDay' && dayOfMonth' == dayOfMonth'
  