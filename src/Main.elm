
module Main exposing(..)
import Html exposing (..)

greet : String -> String
greet name = 
      name ++ " welcome!"

main : Html msg
main =
      text (greet "yaric")
  

