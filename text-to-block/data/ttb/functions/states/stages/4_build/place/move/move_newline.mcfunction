# Increment
scoreboard players add lineCount Stamp 1

# Goto Init Pos
function ttb:states/stages/4_build/place/move/goto_init_pos

# Calculate Newline Height
scoreboard players operation newlineHeight StampFontInfo = totalHeight StampFontInfo
scoreboard players add newlineHeight StampFontInfo 1
scoreboard players operation newlineHeight StampFontInfo += lineHeight StampSettings
scoreboard players operation newlineHeight StampFontInfo *= lineCount StampStatus

# Move entity in direction of arrow relative to its eyeline
execute if score fontAxis StampSettings matches 1 run function ttb:states/stages/4_build/place/move/move_newline_horizontal
execute if score fontAxis StampSettings matches 2 run function ttb:states/stages/4_build/place/move/move_newline_vertical