# Set Subset
data modify storage minecraft:stamp filePath.subset set value "n"

# Set Char
execute if score charID StampFontInfo matches 35 run data modify storage minecraft:stamp filePath.char set value "0"
execute if score charID StampFontInfo matches 36 run data modify storage minecraft:stamp filePath.char set value "1"
execute if score charID StampFontInfo matches 37 run data modify storage minecraft:stamp filePath.char set value "2"
execute if score charID StampFontInfo matches 38 run data modify storage minecraft:stamp filePath.char set value "3"
execute if score charID StampFontInfo matches 39 run data modify storage minecraft:stamp filePath.char set value "4"
execute if score charID StampFontInfo matches 40 run data modify storage minecraft:stamp filePath.char set value "5"
execute if score charID StampFontInfo matches 41 run data modify storage minecraft:stamp filePath.char set value "6"
execute if score charID StampFontInfo matches 42 run data modify storage minecraft:stamp filePath.char set value "7"
execute if score charID StampFontInfo matches 43 run data modify storage minecraft:stamp filePath.char set value "8"
execute if score charID StampFontInfo matches 44 run data modify storage minecraft:stamp filePath.char set value "9"