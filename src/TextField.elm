
module TextField exposing(..)
import Browser
import Html exposing (Html, div, button, text)
import Html.Events exposing (..)

greet : String -> String
greet name = 
      name ++ " welcome!"

main = 
      Browser.sandbox { init = init, update = update, view = view }

-- Model

type alias Model =
      {     
            placeholder : String,
            content : String
      }

init : Model
init =
      {
            placeholder = "Enter",
            content = "Yaric" 
      }

-- Update

type Msg =
      Change String


update : Msg -> Model -> Model
update msg model =
      case msg of
            Change newContent ->
                  { model | content = newContent}

-- If statement

checkNumber : Float -> String
checkNumber num =
    if num <= 25.0 then
        "Not enough"
    else
        "Oh that's too much!"


-- View

view : Model -> Html Msg
view model = 
      div []
      [ 
            text (model.placeholder)
      ]