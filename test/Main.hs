module Main where

import Test.QuickCheck (quickCheck)

test1 :: Integer -> Bool
test1 a = False

test2 :: Integer -> Bool
test2 a = False

main = do
  quickCheck test1
  quickCheck test2