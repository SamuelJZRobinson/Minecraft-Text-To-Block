execute store result storage minecraft:tp coords.x int 1 run scoreboard players get xPosInit StampStatus
execute store result storage minecraft:tp coords.y int 1 run scoreboard players get yPosInit StampStatus
execute store result storage minecraft:tp coords.z int 1 run scoreboard players get zPosInit StampStatus
execute as @s run function ttb:utility/tp/tp_absolute with storage minecraft:tp coords