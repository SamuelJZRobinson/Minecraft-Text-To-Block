# Set Data
data modify storage minecraft:tp coords.x set value 0
execute store result storage minecraft:tp coords.y int 1 run scoreboard players get newlineHeight StampStatus
scoreboard players operation newlineHeight StampStatus *= NEGATIVE_FLIP StampStatus
data modify storage minecraft:tp coords.z set value 0
# TP
execute as @e[type=armor_stand,tag=stamp,team=Stamp] at @s run function ttb:utility/tp/tp_relative_caret_descend with storage minecraft:tp coords