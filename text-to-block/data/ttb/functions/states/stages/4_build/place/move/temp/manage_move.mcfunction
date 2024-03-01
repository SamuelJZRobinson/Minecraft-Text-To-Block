# Notes
  # Card    Score   Front   Right-Align   Left-Align
  # North   0       -Z      +X            -X
  # East    1       +X      +Z            -Z
  # South   2       +Z      -X            +X
  # West    3       -X      -Z            +Z

# Set Movement
scoreboard players operation charWidth Stamp += CHAR_SPACING fontDraw
scoreboard players operation lineMoved Stamp += charWidth Stamp
scoreboard players operation charWidth Stamp *= MULTIPLIER Stamp

# X Axis
execute if score ignoreFirstMove Stamp matches 0 if score direction Stamp matches 0..2 unless score direction Stamp matches 1 as @e[type=minecraft:armor_stand,team=Stamp,limit=1] run function ttb:stamp/move/move_x

# Z Axis
execute if score ignoreFirstMove Stamp matches 0 if score direction Stamp matches 1..3 unless score direction Stamp matches 2 as @e[type=minecraft:armor_stand,team=Stamp,limit=1] run function ttb:stamp/move/move_z

# Reset Value
scoreboard players set ignoreFirstMove Stamp 0