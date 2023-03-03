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

-- An empty category
data Empty
-- The book says there is one and only one map from Empty to other sets (including Empty),
-- which doesn't has an arrow (or implementation)
-- but I don't totally understand. Maybe similar to n ^ 0 == 1 ?
-- The implementation here won't never be touched at runtime. It is just for passing the compiler's check.
emptyToOne :: Empty -> One
emptyToOne dummy = One

-- I try to define the `onetoEmpty :: One -> Empty` here, but I can't
-- implement it, even trying to give a dummy.
-- The books says there is no map from non-empty set to an empty set.
-- This makes sense to me, because I can't write it.