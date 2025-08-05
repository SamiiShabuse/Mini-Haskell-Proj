module Main (main) where

-- Function to perform the calculator operations
calculate :: Double -> String -> Double -> String
calculate a operation b =
  case operation of
    "+" -> show (a + b)
    "-" -> show (a - b)
    "*" -> show (a * b)
    "/" -> if b /= 0 then show (a / b) else "Error: Division by zero"
    _   -> "Error: Invalid operation"

-- Helper function to read a number from the user
readNumber :: String -> IO Double
readNumber prompt = do
  putStrLn prompt
  input <- getLine
  return (read input :: Double)

-- Main entry point
main :: IO ()
main = do
  putStrLn "Hello, Haskell World!"
  putStrLn "What is your name?"
  name <- getLine
  putStrLn ("Nice to meet you, " ++ name ++ "! Welcome to Haskell calculator! <Insert Calculator Emoji!>")

  firstInput <- readNumber "Please enter the first number: "

  secondInput <- readNumber "Please enter the second number: "

  putStrLn "Choose an operation (+, -, *, /): "
  operation <- getLine

  let result = calculate firstInput operation secondInput

  -- This is a comment explaining the next line of code
  putStrLn ("The result of " ++ show firstInput ++ " " ++ operation ++ " " ++ show secondInput ++ " is " ++ show result)
  putStrLn "Thank you for using the Haskell calculator. Goodbye!"