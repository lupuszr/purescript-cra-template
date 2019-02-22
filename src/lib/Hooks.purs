module Test.Hooks where

import Prelude
import Effect (Effect)
import Data.Unit (Unit)
import Data.Either (Either)
import Data.Tuple (Tuple)

data StateType = Either String Number

-- dispatch a react effect
useEffectHook :: Effect Unit -> Effect Unit
useEffectHook = useEffect

-- dispatch a react effect plus call end fn
useEffectHook1 :: Effect Unit -> Effect Unit -> Effect Unit
useEffectHook1 = useEffect1

-- dispatch a react effect plus call end fn when a specific arg got updated
useEffectHook2 :: Effect Unit -> Effect Unit -> Array (Either String Number) -> Effect Unit
useEffectHook2 = useEffect2

useStateHook :: StateType -> (Tuple StateType (StateType -> Unit))
useStateHook = useState

foreign import useEffect :: Effect Unit -> Effect Unit
foreign import useEffect1 :: Effect Unit -> Effect Unit -> Effect Unit
foreign import useEffect2 :: Effect Unit -> Effect Unit -> Array (Either String Number) -> Effect Unit

foreign import useState :: StateType -> Tuple StateType (StateType -> Unit)
