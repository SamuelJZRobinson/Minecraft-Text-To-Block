# Set Data
data modify storage minecraft:tp input.x set value 0
scoreboard players operation newlineHeight StampStatus *= NEGATIVE_FLIP StampStatus
execute store result storage minecraft:tp input.y int 1 run scoreboard players get newlineHeight StampStatus
data modify storage minecraft:tp input.z set value 0
# TP
execute as @e[type=armor_stand,tag=stamp,team=Stamp] at @s run function ttb:utility/tp/tp_data_relative with storage minecraft:tp input