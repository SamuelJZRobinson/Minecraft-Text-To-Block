# Notes
  # Placed characters get overwritten when ignoreFirstMove and newline are set to 1.

# Modify Values
scoreboard players add lineCount stamper 1
scoreboard players set lineMoved stamper 0
execute if score newline stamper matches 2 run scoreboard players set ignoreFirstMove stamper 1

# Get Newline Height
scoreboard players operation posLine stamper = newlineHeight fontInfo
scoreboard players operation posLine stamper *= lineCount stamper
scoreboard players operation posLine stamper *= MULTIPLIER stamper

# Copy Init Pos
execute if score direction stamper matches 0..2 unless score direction stamper matches 1 run scoreboard players operation posLineCopy stamper = zPosInit stamper
execute if score direction stamper matches 1..3 unless score direction stamper matches 2 run scoreboard players operation posLineCopy stamper = xPosInit stamper

# Find New Axis
execute if score direction stamper matches 0..3 unless score direction stamper matches 1..2 run scoreboard players operation posLineCopy stamper -= posLine stamper
execute if score direction stamper matches 1..2 run scoreboard players operation posLineCopy stamper += posLine stamper

# Goto Init Axis
execute if score direction stamper matches 0..2 unless score direction stamper matches 1 store result entity @s Pos[0] double 0.1 run scoreboard players get xPosInit stamper
execute if score direction stamper matches 1..3 unless score direction stamper matches 2 store result entity @s Pos[2] double 0.1 run scoreboard players get zPosInit stamper

# Goto New Axis
execute if score direction stamper matches 0..2 unless score direction stamper matches 1 store result entity @s Pos[2] double 0.1 run scoreboard players get posLineCopy stamper
execute if score direction stamper matches 1..3 unless score direction stamper matches 2 store result entity @s Pos[0] double 0.1 run scoreboard players get posLineCopy stamper

# Proceed
execute if score newline stamper matches 1 run function ttb:fonts/measurement/get_font
execute if score newline stamper matches 2 run function ttb:stamp/build/place_redstone