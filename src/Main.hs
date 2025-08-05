module Main (main) where
import GHC.IO.Handle (nativeNewline)

main :: IO ()
main = do
  putStrLn "Hello, Haskell World!"
  putStrLn "What is your name?"
  name <- getLine
  putStrLn ("Nice to meet you, " ++ name ++ "!")
  putStrLn ("Your system's native newline character is: " ++ show nativeNewline)