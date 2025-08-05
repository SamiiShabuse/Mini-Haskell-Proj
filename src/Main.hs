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

  putStrLn "Choose an operation (+, -, *, /): "
  operation <- getLine

  let firstNumber = read firstInput :: Int
      secondNumber = read secondInput :: Int
      
      result = case operation of
        "+" -> firstNumber + secondNumber
        "-" -> firstNumber - secondNumber
        "*" -> firstNumber * secondNumber
        "/" -> if secondNumber /= 0 
                  then firstNumber `div` secondNumber 
                  else error "Cannot divide by zero!"
        _   -> error "Invalid operation!"

  -- This is a comment explaining the next line of code
  putStrLn ("The result of " ++ show firstNumber ++ " " ++ operation ++ " " ++ show secondNumber ++ " is " ++ show result)
  putStrLn "Thank you for using the Haskell calculator. Goodbye!"