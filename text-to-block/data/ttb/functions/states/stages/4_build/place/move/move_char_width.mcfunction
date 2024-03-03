# Add Char Spacing
scoreboard players operation charWidth StampFont += CHAR_SPACING StampSettings

# Increment
scoreboard players operation lineDistance StampStatus += charWidth StampFont

# Move Right
execute store result storage minecraft:tp coords.x int 1 run scoreboard players get charWidth StampFont
data modify storage minecraft:tp coords.y set value 0
data modify storage minecraft:tp coords.z set value 0
execute as @e[type=armor_stand,tag=stamp,team=Stamp] at @s run function ttb:utility/tp/tp_relative_caret with storage minecraft:tp coords

# Set Flags
scoreboard players set tab StampFlags 0