# Notes
  # Placed characters get overwritten when ignoreFirstMove and newline are set to 1.

# Modify Values
scoreboard players add lineCount Stamp 1
# scoreboard players set lineMoved Stamp 0
# execute if score newline Stamp matches 2 run scoreboard players set ignoreFirstMove Stamp 1

# Get Newline Height
scoreboard players operation posLine Stamp = newlineHeight StampStatusFontInfo
scoreboard players operation posLine Stamp *= lineCount Stamp
scoreboard players operation posLine Stamp *= MULTIPLIER Stamp

# Copy Init Pos
execute if score direction Stamp matches 0..2 unless score direction Stamp matches 1 run scoreboard players operation posLineCopy Stamp = zPosInit StampStatus
execute if score direction Stamp matches 1..3 unless score direction Stamp matches 2 run scoreboard players operation posLineCopy Stamp = xPosInit StampStatus

# Find New Axis
execute if score direction Stamp matches 0..3 unless score direction Stamp matches 1..2 run scoreboard players operation posLineCopy Stamp -= posLine Stamp
execute if score direction Stamp matches 1..2 run scoreboard players operation posLineCopy Stamp += posLine Stamp

# Goto Init Axis
execute if score direction Stamp matches 0..2 unless score direction Stamp matches 1 store result entity @s Pos[0] double 0.1 run scoreboard players get xPosInit StampStatus
execute if score direction Stamp matches 1..3 unless score direction Stamp matches 2 store result entity @s Pos[2] double 0.1 run scoreboard players get zPosInit StampStatus

# Goto New Axis
execute if score direction Stamp matches 0..2 unless score direction Stamp matches 1 store result entity @s Pos[2] double 0.1 run scoreboard players get posLineCopy Stamp
execute if score direction Stamp matches 1..3 unless score direction Stamp matches 2 store result entity @s Pos[0] double 0.1 run scoreboard players get posLineCopy Stamp

# Proceed
execute if score newline Stamp matches 1 run function ttb:fonts/measurement/get_font
execute if score newline Stamp matches 2 run function ttb:stamp/build/place_redstone