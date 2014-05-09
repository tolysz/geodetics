module Geodetics.Altitude (
  HasAltitude (..)
) where

import Numeric.Units.Dimensional.Prelude
import qualified Prelude as P

-- | All geographical coordinate systems need the concept of altitude above a reference point, usually associated with
-- local sea level.
-- 
-- Minimum definition: altitude, setAltitude.
class HasAltitude a where
   altitude :: a -> Length Double
   setAltitude :: Length Double -> a -> a
   groundPosition :: a -> a  -- ^ Set altitude to zero.
   groundPosition = setAltitude (0 *~ meter)