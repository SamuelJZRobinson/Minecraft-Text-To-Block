# Set Data
data modify storage minecraft:tp input.x set value 0
data modify storage minecraft:tp input.y set value 0
execute store result storage minecraft:tp input.z int 1 run scoreboard players get newlineHeight StampStatus
# TP
execute as @e[type=armor_stand,tag=stamp,team=Stamp] at @s run function ttb:utility/tp/tp_data_relative with storage minecraft:tp input