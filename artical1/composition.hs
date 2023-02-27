{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
import Prelude hiding ((.))
{-# HLINT ignore "Avoid lambda" #-}
(.) :: (b -> c) -> (a -> b) -> a -> c
f . g = \a -> f (g a)

data One = One
type Point a = One -> a

-- Represent finite set.
class Finite f where
  -- all point function
  allPoints :: [Point f]

-- check if 2 functions are same
areSameFn :: (Finite a) => (Eq b) => (a -> b) -> (a -> b) -> Bool
areSameFn f g = all (\a -> (f . a) One == (g . a) One) allPoints