module Space where
  -- Horizontal space
  data Plane = Plane
  -- Vertical space
  data Line = Line
  type Space = (Plane, Line)

  --  Vertical level of the Space
  type Level = Space -> Line
  --  Horizontal shadow of a space
  type Shadow = Space -> Plane