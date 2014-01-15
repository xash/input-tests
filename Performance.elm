import Graphics.Input as I

box = empty |> container 100 100 middle 
            |> color black 

main = flow down [
 plainText "1 Layer",
 box,
 plainText "200 Layers",
 layers (repeat 200 box),
 plainText "200 Layers + 1 hoverable Layer on top",
 layers (repeat 200 box ++ [fst <| I.hoverable box])]
