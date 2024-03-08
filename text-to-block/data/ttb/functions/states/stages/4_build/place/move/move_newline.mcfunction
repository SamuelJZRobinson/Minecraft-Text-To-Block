# Set Scores
scoreboard players set lineDistance StampStatus 0

# Goto Init Pos
execute as @e[type=armor_stand,tag=stamp,team=Stamp] run function ttb:states/stages/4_build/place/move/goto_init_pos

# Calculate Newline Height
scoreboard players operation newlineHeight StampStatus = charTotalHeight StampFont
scoreboard players operation newlineHeight StampStatus += lineHeight StampSettings
scoreboard players operation newlineHeight StampStatus *= lineCount StampStatus

# Move Forward Or Down
execute if score fontAxis StampSettings matches 0 run function ttb:states/stages/4_build/place/move/move_newline_h
execute if score fontAxis StampSettings matches 1 run function ttb:states/stages/4_build/place/move/move_newline_v

# Set Flags
scoreboard players set newline StampFlags 0
scoreboard players set preNewline StampFlags 1

# Increment
scoreboard players add lineCount StampStatus 1