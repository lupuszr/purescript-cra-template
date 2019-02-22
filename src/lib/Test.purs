module Test.Math where

import Prelude
import Data.Maybe

class (Semiring a) <= Semiringic a where
  addra :: a -> a -> a

instance addInt :: Semiringic Int where
  addra a b = a + b

instance addNumber :: Semiringic Number where
  addra a b = a * b

add a = addra 1 a

bla :: Int -> Int -> Maybe Int
bla a b = Just(a * b) >>= (\x -> Just(x + 2))
