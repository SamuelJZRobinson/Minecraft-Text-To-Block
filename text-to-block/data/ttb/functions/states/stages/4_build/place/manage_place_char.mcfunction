# Notes
  # When a newline occurs then one instance of a space creating char is ignored to maintain text alignment.

# Get Char Dimensions
function ttb:states/stages/4_build/place/char/get_char_dimensions with storage minecraft:stamp filePath

# Get Char Flags
function ttb:states/stages/4_build/place/char/get_char_flags

# Place Structure
function ttb:states/stages/4_build/place/char/manage_set_char
execute if score charID StampFont matches 3.. at @e[type=armor_stand,tag=stamp,team=Stamp] run function ttb:states/stages/4_build/place/structure/place_structure with storage minecraft:stamp filePath

### If char whitespace and next few chars is imminent newline then clone last white space pos to current pos onto a newline.

# Move Char Width
  # Default
  execute if score charID StampFont matches 3.. run function ttb:states/stages/4_build/place/move/move_char_width
  # Whitespace
  execute if score charID StampFont matches 2 if score preNewline StampFlags matches 0 run function ttb:states/stages/4_build/place/move/move_char_width
  # Control
  execute if score tab StampFlags matches 1 if score preNewline StampFlags matches 0 run function ttb:states/stages/4_build/place/move/move_char_width

# Remove Input Char
data remove storage minecraft:stamp input[0]

# Restart Cycle
function ttb:states/stages/4_build/tests/manage_tests