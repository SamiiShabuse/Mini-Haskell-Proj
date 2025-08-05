module Main (main) where

main :: IO ()
main = do
  putStrLn "Hello, Haskell World!"
  putStrLn "What is your name?"
  name <- getLine
  putStrLn ("Nice to meet you, " ++ name ++ "! Welcome to Haskell calculator! <Insert Calculator Emoji!>")
