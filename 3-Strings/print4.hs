module Print4 where
  printSecond :: IO ()
  printSecond = putStrLn greeting

  main :: IO ()
  main = do
    putStrLn greeting
    printSecond

  greeting :: String
  greeting = "Yarrrrr"