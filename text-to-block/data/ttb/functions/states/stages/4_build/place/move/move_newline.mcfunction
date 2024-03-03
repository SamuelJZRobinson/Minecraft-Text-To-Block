# Set Scores
scoreboard players add lineCount Stamp 1
scoreboard players set lineDistance StampStatus 0

# Goto Init Pos
function ttb:states/stages/4_build/place/move/goto_init_pos

# Calculate Newline Height
scoreboard players operation newlineHeight StampFont = charTotalHeight StampFont
scoreboard players add newlineHeight StampFont 1
scoreboard players operation newlineHeight StampFont += lineHeight StampSettings
scoreboard players operation newlineHeight StampFont *= lineCount StampStatus

# Move entity in direction of arrow relative to its eyeline
execute if score fontAxis StampSettings matches 0 run function ttb:states/stages/4_build/place/move/move_newline_horizontal
execute if score fontAxis StampSettings matches 1 run function ttb:states/stages/4_build/place/move/move_newline_vertical

# Set Flags
scoreboard players set newline StampFlags 0