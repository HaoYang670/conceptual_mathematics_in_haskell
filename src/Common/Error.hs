module Common.Error where

data Result a = 
  Ok a
  | Err String