# Goto Location
execute if score state StampStatus matches 2 unless entity @e[type=minecraft:armor_stand,team=Stamp,tag=stamp] run function ttb:states/stages/2_idle/control/move/tp_goto

# Kill
execute if score state StampStatus matches 2 run kill @e[type=minecraft:armor_stand,team=Stamp,tag=stamp]

# Set Scores
execute if score state StampStatus matches 2 run scoreboard players set stampExists StampStatus 0
execute if score state StampStatus matches 2 run scoreboard players set xPosInit StampStatus 0
execute if score state StampStatus matches 2 run scoreboard players set yPosInit StampStatus 0
execute if score state StampStatus matches 2 run scoreboard players set zPosInit StampStatus 0

# Warning
execute if score state StampStatus matches 3.. run function ttb:error_handling/raise_warning {message:"Cannot kill, already started!"}