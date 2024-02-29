# Increment
scoreboard players add lineCount Stamp 1

# Goto Init Pos
function ttb:states/stages/4_build/move/goto_init_pos

# Get New Line Height
scoreboard players operation newlineHeight StampStatus = fullCharHeight FontInfo
scoreboard players operation newlineHeight StampStatus += lineHeight StampSettings
scoreboard players operation newlineHeight StampStatus *= lineCount Stamp

# Move entity in direction of arrow relative to its eyeline
execute if score fontOrientation StampSettings matches 1 run function ttb:states/stages/4_build/move/goto_newline_horizontal
execute if score fontOrientation StampSettings matches 2 run function ttb:states/stages/4_build/move/goto_newline_vertical