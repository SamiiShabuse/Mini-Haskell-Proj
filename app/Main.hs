module Main (main) where

import Calculator -- import the Calculator module

-- Calculator Logic (One Round)
calculatorRound :: IO ()
calculatorRound = do
  firstInput <- readNumber "Please enter the first number: "
  secondInput <- readNumber "Please enter the second number: "
  putStrLn "Choose an operation (+, -, *, /): "
  operation <- getLine
  let result = calculate firstInput operation secondInput
  putStrLn ("The result of " ++ show firstInput ++ " " ++ operation ++ " " ++ show secondInput ++ " is " ++ show result)

-- Loop that continues to ask for input until the user decides to stop
calculatorLoop :: IO ()
calculatorLoop = do
  putStrLn "Do you want to perform a calculation? (yes/no)"
  response <- getLine
  if response == "yes"
    then do
      calculatorRound
      calculatorLoop  -- Recursively call to continue the loop
    else putStrLn "Thank you for using the Haskell calculator. Goodbye!"

-- Main entry point
main :: IO ()
main = do
  putStrLn "Hello, Haskell World!"
  putStrLn "What is your name?"
  name <- getLine
  putStrLn ("Nice to meet you, " ++ name ++ "! Welcome to Haskell calculator! <Insert Calculator Emoji!>")
  calculatorLoop  -- Start the calculator loop