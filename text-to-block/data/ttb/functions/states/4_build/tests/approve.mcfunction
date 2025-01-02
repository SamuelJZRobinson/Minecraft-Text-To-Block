# Set Scores
  # Char Parse
  scoreboard players set charID StampFont 0
  scoreboard players set noCharMatch StampFont 1
  # Flags
  scoreboard players set preNewline StampFlags 0

# Goto Newline
execute if score newline StampFlags matches 1 run function ttb:states/4_build/place/move/move_newline
execute if score lineDistance StampStatus >= lineDistanceLimit StampSettings run function ttb:states/4_build/place/move/move_newline

# Check Char
function ttb:states/4_build/check/check_char