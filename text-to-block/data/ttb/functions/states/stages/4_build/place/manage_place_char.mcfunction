# Set Char In File Path
function ttb:states/stages/4_build/place/char/manage_set_char

# Place Structure Block
execute if score charID StampCharParse matches 3.. at @e[type=armor_stand,tag=stamp,team=Stamp] run function ttb:states/stages/4_build/place/structure/place_structure with storage minecraft:stamp filePath

# Move
function ttb:states/stages/4_build/place/move/move_char_width with storage minecraft:stamp filePath

# Remove Input Char
data remove storage minecraft:stamp input[0]

# Increment
scoreboard players add charID StampStatus 1

# Restart Cycle
function ttb:states/stages/4_build/tests/manage_tests