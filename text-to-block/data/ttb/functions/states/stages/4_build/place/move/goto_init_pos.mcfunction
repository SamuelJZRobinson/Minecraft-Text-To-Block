execute store result storage minecraft:tp input.x int 1 run scoreboard players get xPosInit StampStatus
execute store result storage minecraft:tp input.y int 1 run scoreboard players get yPosInit StampStatus
execute store result storage minecraft:tp input.z int 1 run scoreboard players get zPosInit StampStatus
execute as @e[type=armor_stand,tag=stamp,team=Stamp] run function ttb:utility/tp/tp_data_absolute with storage minecraft:tp input