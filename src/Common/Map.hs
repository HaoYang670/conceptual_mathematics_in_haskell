module Common.Map where

import Common.Set (Element, Set)
import Common.Error (Result)
import qualified Data.Map as DM

type Relation = DM.Map Element Element

-- A total function from domain to codomain
-- I don't find a way to implement the map lazily (such as function).
-- I have to store all the maping relation now.
data Map = Map{
  domain :: Set,
  codomain :: Set,
  rule :: Relation
}

-- Try to build a Map. 
-- build :: Set -> Set -> Relation -> Result Map
-- build domain codomain rule = 


