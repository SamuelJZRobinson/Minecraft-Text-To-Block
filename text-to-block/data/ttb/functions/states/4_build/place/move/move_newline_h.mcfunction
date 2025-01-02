# Set Data
data modify storage minecraft:tp coords.x set value 0
data modify storage minecraft:tp coords.y set value 0
execute store result storage minecraft:tp coords.z int 1 run scoreboard players get newlineHeight StampStatus
# TP
execute as @e[type=armor_stand,tag=stamp,team=Stamp] at @s run function ttb:utility/tp/tp_relative_caret with storage minecraft:tp coords