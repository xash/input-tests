import Mouse
import Graphics.Input as I

but = I.button "Click Me!"
cBut = I.customButton (color blue box) (color yellow box) (color red box)
tField = I.field "Field"
tPass = I.password "Don't know me"
tMail = I.email "foo@bar.com"
check = I.checkbox True
dMenu = I.dropDown [("First", 1), ("Second", 2)]
hover = I.hoverable box

box = empty |> container 50 50 middle |> color blue

overlay = empty |> container 200 200 middle
                |> color green
                |> opacity 0.3
 
main = (\a -> layers [flow down (fst hover `beside` fst but `beside` fst cBut :: a)
                      , overlay])
       <~ combine [lift asText (snd hover), fst check, fst dMenu,
                   fst tMail, fst tPass, fst tField]
