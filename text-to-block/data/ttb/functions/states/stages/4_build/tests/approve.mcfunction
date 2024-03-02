# Set Scores
scoreboard players set charID StampCharParse 0
scoreboard players set noCharMatch StampCharParse 1

# Newline
execute if score lineDistance StampStatus >= lineDistanceLimit StampSettings run function ttb:states/stages/4_build/move/move_newline

# Check Next Char
function ttb:states/stages/4_build/check/check_char_loop