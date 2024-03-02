# Add Spacing
scoreboard players operation charWidth StampFont += CHAR_SPACING StampSettings

# Move Right
execute store result storage minecraft:tp input.x int 1 run scoreboard players get charWidth StampFont
data modify storage minecraft:tp input.y set value 0
data modify storage minecraft:tp input.z set value 0
execute as @e[type=armor_stand,tag=stamp,team=Stamp] at @s run function ttb:utility/tp/tp_data_relative with storage minecraft:tp input