module Motion where
  import Time
  import Space

  type Motion = Time -> Space
  type HorizontalMotion = Time -> Plane
  type VerticalMotion = Time -> Line

  recapture :: HorizontalMotion -> VerticalMotion -> Motion
  recapture h v t = (h t, v t)