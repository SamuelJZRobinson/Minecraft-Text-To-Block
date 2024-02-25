# Clear
clear @s writable_book{stampController:1b}

# Kill
execute as @e[type=minecraft:armor_stand,team=Stamp] run kill @s

# Set Score
scoreboard players set stampExists StampStatus 0
scoreboard players set xPosInit StampStatus 0
scoreboard players set zPosInit StampStatus 0