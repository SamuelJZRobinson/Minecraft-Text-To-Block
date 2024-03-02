# Dimensions
scoreboard players set totalHeight StampFontInfo 7
scoreboard players set xHeight StampFontInfo 2
scoreboard players set avgWidth StampFontInfo 4

### How is doSubset implemented?
# Char Width
execute if score charID StampFontInfo matches 3..34 run function ttb:fonts/pixel/set/set_symbols
execute if score charID StampFontInfo matches 35..44 run function ttb:fonts/pixel/set/set_numbers
execute if score charID StampFontInfo matches 45..70 run function ttb:fonts/pixel/set/set_uppercases
execute if score charID StampFontInfo matches 71..96 run function ttb:fonts/pixel/set/set_lowercases