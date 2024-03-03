# Get Char Dimensions
function ttb:states/stages/4_build/place/char/get_char_dimensions with storage minecraft:stamp filePath

# Place Structure
function ttb:states/stages/4_build/place/char/manage_set_char
execute if score charID StampFont matches 3.. at @e[type=armor_stand,tag=stamp,team=Stamp] run function ttb:states/stages/4_build/place/structure/place_structure with storage minecraft:stamp filePath

# Move Char Width
execute if score charID StampFont matches 2.. run function ttb:states/stages/4_build/place/move/move_char_width
execute if score tab StampFlags matches 1 run function ttb:states/stages/4_build/place/move/move_char_width

# Remove Input Char
data remove storage minecraft:stamp input[0]

# Restart Cycle
# function ttb:states/stages/4_build/tests/manage_tests