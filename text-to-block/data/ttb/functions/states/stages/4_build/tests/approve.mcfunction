tellraw @a "Approve"

### Still need a way to skip subsets if they are disabled

# Set Scores
scoreboard players set charID StampFont 0
scoreboard players set noCharMatch StampFont 1

# Goto Newline
execute if score lineDistance StampStatus >= lineDistanceLimit StampSettings run function ttb:states/stages/4_build/place/move/move_newline

# Check Char
function ttb:states/stages/4_build/check/check_char