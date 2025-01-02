# Get Coords
execute if score state StampStatus matches 2 if score stampExists StampStatus matches 1 store result storage minecraft:tp coords.x int 1 run scoreboard players get xPosInit StampStatus
execute if score state StampStatus matches 2 if score stampExists StampStatus matches 1 store result storage minecraft:tp coords.y int 1 run scoreboard players get yPosInit StampStatus
execute if score state StampStatus matches 2 if score stampExists StampStatus matches 1 store result storage minecraft:tp coords.z int 1 run scoreboard players get zPosInit StampStatus

# TP
execute if score state StampStatus matches 2 if score stampExists StampStatus matches 1 run function ttb:utility/tp/tp_absolute with storage minecraft:tp coords

# Warning
execute if score state StampStatus matches 2 if score stampExists StampStatus matches 0 run function ttb:utility/exceptions/raise_warning {message:"Cannot goto, need stamp!"}
execute if score state StampStatus matches 3.. run function ttb:utility/exceptions/raise_warning {message:"Cannot goto, already started!"}