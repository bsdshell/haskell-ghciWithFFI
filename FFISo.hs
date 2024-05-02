{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ForeignFunctionInterface #-}
module Main where

import qualified Data.ByteString.Char8 as B

foreign import ccall "callMeFromHaskell"
  callMeFromHaskell :: IO ()

foreign export ccall callMeFromC :: IO ()
callMeFromC :: IO ()
callMeFromC = B.putStrLn "callMeFromC"

main :: IO ()
main = do
  B.putStrLn "main"
  callMeFromHaskell
  return ()
