module Main (main) where

main :: IO ()
main = do
  putStrLn "Hello, Haskell World!"
  putStrLn "What is your name?"
  name <- getLine
  putStrLn ("Nice to meet you, " ++ name ++ "! Welcome to Haskell calculator! <Insert Calculator Emoji!>")

  putStrLn "Enter the first number: "
  firstInput <- getLine

  putStrLn "Enter the second number: "
  secondInput <- getLine

  let firstNumber = read firstInput :: Int
      secondNumber = read secondInput :: Int
      sumResult = firstNumber + secondNumber

  -- This is a comment explaining the next line of code
  putStrLn ("The sum of " ++ show firstNumber ++ " and " ++ show secondNumber ++ " is " ++ show sumResult)
  putStrLn "Thank you for using the Haskell calculator. Goodbye!"