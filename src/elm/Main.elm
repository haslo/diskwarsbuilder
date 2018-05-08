module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import FontAwesome as FA


-- component import example

import Components.Hello exposing (hello)


-- APP


main : Program Never Model Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    Int


model : Model
model =
    0



-- UPDATE


type Msg
    = NoOp
    | Increment


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Increment ->
            model + 1



-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib


view : Model -> Html Msg
view model =
    div [ style [ ( "text-align", "center" ) ] ]
        [ -- inline CSS (literal)
          hello model -- ext 'hello' component (takes 'model' as arg)
        , button [ class "btn btn-primary btn-lg", onClick Increment ]
            [ -- click handler
              span [] [ FA.icon FA.star ]
            , span [] [ text "FTW!" ]
            ]
        ]



-- CSS STYLES


styles : { img : List ( String, String ) }
styles =
    { img =
        [ ( "width", "33%" )
        , ( "border", "4px solid #337AB7" )
        ]
    }
