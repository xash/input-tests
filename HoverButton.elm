import Graphics.Input as I

but = I.button "Button!"
hov = I.hoverable (fst but)

main = (\h -> fst hov `above` asText h) <~ snd hov
