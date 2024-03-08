# STAMP STATUS
scoreboard objectives add StampStatus dummy {"bold":true,"color":"white","text":"Stamp Status"}
# State
scoreboard players set started StampStatus 0
scoreboard players set state StampStatus 1
scoreboard players set stampExists StampStatus 0
# Movement
scoreboard players set yaw StampStatus 180
scoreboard players set xPosInit StampStatus 0
scoreboard players set yPosInit StampStatus 0
scoreboard players set zPosInit StampStatus 0
scoreboard players set lineCount StampStatus 1
scoreboard players set lineDistance StampStatus 0
scoreboard players set newlineHeight StampStatus 0
# Utility
scoreboard players set NEGATIVE_FLIP StampStatus -1