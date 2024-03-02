execute if score charID StampFontInfo matches 0..1 run function ttb:states/stages/4_build/place/char/set_char_controls
execute if score charID StampFontInfo matches 2 run function ttb:states/stages/4_build/place/char/set_char_whitespace
execute if score charID StampFontInfo matches 3..34 run function ttb:states/stages/4_build/place/char/set_char_symbols
execute if score charID StampFontInfo matches 35..44 run function ttb:states/stages/4_build/place/char/set_char_numbers
execute if score charID StampFontInfo matches 45..70 run function ttb:states/stages/4_build/place/char/set_char_uppercases
execute if score charID StampFontInfo matches 71..96 run function ttb:states/stages/4_build/place/char/set_char_lowercases