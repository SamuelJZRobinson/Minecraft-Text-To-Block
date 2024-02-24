# Notes
  # Card    Direction   Front   Right-Align   Left-Align
  # North   0           -Z      +X            -X
  # East    1           +X      +Z            -Z
  # South   2           +Z      -X            +X
  # West    3           -X      -Z            +Z

# Set Movement
scoreboard players operation charWidth stamper += CHAR_SPACING fontDraw
scoreboard players operation lineMoved stamper += charWidth stamper
scoreboard players operation charWidth stamper *= MULTIPLIER stamper

# X Axis
execute if score ignoreFirstMove stamper matches 0 if score direction stamper matches 0..2 unless score direction stamper matches 1 as @e[type=minecraft:armor_stand,team=stamper,limit=1] run function ttb:stamp/move/move_x

# Z Axis
execute if score ignoreFirstMove stamper matches 0 if score direction stamper matches 1..3 unless score direction stamper matches 2 as @e[type=minecraft:armor_stand,team=stamper,limit=1] run function ttb:stamp/move/move_z

# Reset Value
scoreboard players set ignoreFirstMove stamper 0