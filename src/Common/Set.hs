module Common.Set where

import qualified Data.Set as DS

-- We currently use string to represent the element in a set
type Element = String

-- finit set
data Set = Set{
  name :: String,
  elements :: DS.Set Element
}

instance Eq Set where
  (==) s1 s2 =
    (name s1 == name s2) &&
    (elements s1 == elements s2)

instance Show Set where
  show s =
    "Name: " ++ name s ++ "\n" ++
    "Elements: " ++ show (elements s)
