module Calculator (calculate, readNumber) where

-- Function to perform the calculation based on operator
calculate :: Double -> String -> Double -> String
calculate a operation b =
  case operation of
    "+" -> show (a + b)
    "-" -> show (a - b)
    "*" -> show (a * b)
    "/" -> if b /= 0 
        then show (a / b) 
        else "Error: Division by zero"
    "^" -> show (a ** b)
    "%" -> if b /= 0 
        then show (a `mod` round b) 
        else "Error: Division by zero"
    _   -> "Error: Invalid operation"

-- Import for floating-point modulus
import Data.Fixed (mod')

-- Ask the user to enter a number
readNumber :: String -> IO Double
readNumber prompt = do
  putStrLn prompt
  input <- getLine
  return (read input :: Double)