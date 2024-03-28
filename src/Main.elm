
module Main exposing(..)
import Html exposing (..)

greet : String -> String
greet name = 
      name ++ " welcome!"

main =
      text (greet "yaric")