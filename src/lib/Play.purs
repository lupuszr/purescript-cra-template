module Test.Play where

import Prelude
import Test.Hooks (useEffectHook2, useEffect)
import Effect.Console (log)
import Effect (Effect)
import Data.Either

useDocumentTitle :: String -> Effect Unit
useDocumentTitle count = useEffectHook2 (log count) (log "hello") [Left count]

  