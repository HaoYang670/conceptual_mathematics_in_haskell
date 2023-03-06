module Common.Function where 

import Common.Set (Element, Set)
import Common.Error (Result)
import Data.Map (Map)

type Relation = Map Element Element

-- A total function from domain to codomain
-- I don't find a way to implement the map lazily (such as function).
-- I have to store all the maping relation now.
data Function = Map{
  domain :: Set,
  codomain :: Set,
  rule :: Relation
}

instance Show Function where
  show m = "domain: " ++ show (domain m) ++
    "\ncodomain: " ++ show (codomain m)

instance Eq Function where
  (==) m1 m2 = (domain m1 == domain m2) && (codomain m1 == codomain m2) && (rule m1 == rule m2)

-- identity :: Set -> Function

-- Try to build a Map. 
-- build :: Set -> Set -> Relation -> Result Map
-- build domain codomain rule = 


