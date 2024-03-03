# Goto Location
execute unless entity @e[type=minecraft:armor_stand,team=Stamp,tag=stamp] run function ttb:states/stages/2_idle/control/move/tp_goto

# Kill
kill @e[type=minecraft:armor_stand,team=Stamp,tag=stamp]

# Set Scores
scoreboard players set stampExists StampStatus 0
scoreboard players set xPosInit StampStatus 0
scoreboard players set yPosInit StampStatus 0
scoreboard players set zPosInit StampStatus 0