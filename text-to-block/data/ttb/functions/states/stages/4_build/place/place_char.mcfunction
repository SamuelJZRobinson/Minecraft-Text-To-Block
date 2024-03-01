# Set Char In File Path
function ttb:states/stages/4_build/place/set/manage_set_char

# Place Structure Block
execute if score charID StampCharParse matches 3.. at @e[type=armor_stand,tag=stamp,team=Stamp] run function ttb:states/stages/4_build/place/structure/place_structure

# Move
# Get Char Width

# Remove Input Char
data remove storage minecraft:stamp input[0]

# Increment
scoreboard players add charID StampStatus 1