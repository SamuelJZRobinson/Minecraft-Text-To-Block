# Clear
clear @s writable_book{stampControl:1b}

# Kill
execute unless entity @e[type=minecraft:armor_stand,team=Stamp,tag=stamp] run function ttb:states/stages/2_idle/control/move/tp_goto
kill @e[type=minecraft:armor_stand,team=Stamp,tag=stamp]

# Set Score
scoreboard players set stampExists StampStatus 0