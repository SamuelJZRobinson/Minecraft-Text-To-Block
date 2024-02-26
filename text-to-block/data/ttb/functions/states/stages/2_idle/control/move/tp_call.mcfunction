# TP
execute at @s rotated as @e[type=minecraft:armor_stand,team=Stamp,limit=1] run tp @e[type=minecraft:armor_stand,team=Stamp,limit=1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,team=Stamp,limit=1] at @s align xz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~

# Get Coords
execute as @e[type=armor_stand,team=Stamp,limit=1] run function ttb:states/stages/2_idle/control/move/set_init_coords