scoreboard players add yaw StampStatus 90
execute if score yaw StampStatus matches 361.. run scoreboard players set yaw StampStatus 90
execute as @e[type=armor_stand,team=Stamp,tag=stamp,limit=1] store result entity @s Rotation[0] float 1 run scoreboard players get yaw StampStatus