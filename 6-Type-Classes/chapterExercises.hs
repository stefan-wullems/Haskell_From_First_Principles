module Chapter6Exercises where

-- 1 )
data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- 2 )
data Mood = Blah
 | Woot deriving Show

instance Eq Mood where
  (==) Blah Blah = True
  (==) Woot Woot = True
  (==) _ _       = False

settleDown :: Mood -> Mood
settleDown x = if x == Woot
                then Blah
                else x

type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 :: Sentence
s1 = Sentence "dogs" "drool" "often"

s2 :: Sentence
s2 = Sentence "Julie" "loves" "dogs"