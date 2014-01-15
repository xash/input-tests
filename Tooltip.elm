import Window
import Mouse
import Graphics.Input as I

box = empty |> container 100 100 middle
            |> color green
box1 = I.hoverable box
box2 = I.hoverable box

tip1 = empty |> container 100 100 middle
             |> color blue
             |> container 150 150 bottomRight
tip2 = tip1  |> I.hoverable
             |> fst

main = 
 (\h1 h2 -> above (container 200 200 topLeft
                    <| above (plainText "Tooltip isn't hoverable")
                    <| layers [fst box1, if h1 then tip1 else empty])
                  (container 200 200 topLeft
                    <|above (plainText "Tooltip is hoverable")
                    <| layers [fst box2, if h2 then tip2 else empty]))
 <~ snd box1 ~ snd box2
