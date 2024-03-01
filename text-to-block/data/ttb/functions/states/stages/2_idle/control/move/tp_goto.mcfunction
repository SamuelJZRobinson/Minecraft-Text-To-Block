# Get Coords
data modify storage minecraft:tp input set value {"x":0,"y":0,"z":0}
execute store result storage minecraft:tp input.x int 1 run scoreboard players get xPosInit StampStatus
execute store result storage minecraft:tp input.y int 1 run scoreboard players get yPosInit StampStatus
execute store result storage minecraft:tp input.z int 1 run scoreboard players get zPosInit StampStatus

# TP
execute if score stampExists StampStatus matches 1 run function ttb:utility/tp/tp_data_absolute with storage minecraft:tp input

# Sound
function ttb:sounds/enderman_tp