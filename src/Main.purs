module Main where

import Prelude

import Effect (Effect)
import Effect.Class.Console (logShow)
import Effect.Console (log)

add3 :: Int -> Int -> Int -> Int
-- add3 = \x -> \y -> \z -> x + y + z
-- or
add3 x y z = x + y + z

add1 :: Int -> Int -> Int
add1 = add3 1

-- "Hello" -> "Hello!"
shout :: String -> String
shout s = s <> "!"

-- int to String
showInt :: Int -> String
showInt i = show i

-- Menggabungkan 2 buah int menjadi String 
concatenate :: Int -> Int -> String
concatenate x y = show x <> show y

-- if else
ifElse :: Boolean -> String -> String -> String
ifElse b ifTrue ifFalse = 
    if b
        then ifTrue
        else ifFalse

-- memanggil if else dengan mempassing (x > y) -> b
isLarger :: Int -> Int -> String
isLarger x y = ifElse (x > y) "yes" "nope"

-- Number = desimal
addNumbers :: Number -> Number -> Number
addNumbers x y = x + y

main :: Effect Unit
main = do
  log "🍝"
  logShow $ (\x -> \y -> x + y) 1 2
  logShow $ add 1 2
  log $ concatenate 5 10
  log $ isLarger 5 1
  log $ isLarger 1 5
  logShow $ addNumbers 1.0 2.5
  logShow $ add1 1 2