module Main exposing(..)
import Browser
import Html exposing (Html, div, button, text)
import Html.Events exposing (..)

greet : String -> String
greet name = 
      name ++ " welcome!"

main = 
      Browser.sandbox { init = init, update = update, view = view }

-- Model

type alias Model = Float

init : Model
init = 0

-- Update

type Message =
      Increment | Double
      

update : Message -> Model -> Model
update msg model = 
      case msg of
      Increment ->
            model + 1
      Double ->
            model * 2

-- If statement

checkNumber : Float -> String
checkNumber num =
    if num <= 25.0 then
        "Not enough"
    else
        "Oh that's too much!"


-- View

view : Model -> Html Message
view counter = 
      div []
      [ 
            button [] [ text "Down" ],
      div [] [ text (String.fromFloat counter)],
            button [ onClick Increment ] [ text "Up" ],
             button [ onClick Double ] [ text "Double" ],
      div [] [ text (checkNumber counter) ]
      ]