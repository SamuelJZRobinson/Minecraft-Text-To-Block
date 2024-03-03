# TP
execute if score stampExists StampStatus matches 1 at @s rotated as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp,limit=1] run tp @e[type=minecraft:armor_stand,team=Stamp,tag=stamp,limit=1] ~ ~ ~ ~ ~
execute if score stampExists StampStatus matches 1 as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp,limit=1] at @s align xz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~

# Get Coords
execute if score stampExists StampStatus matches 1 as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp,limit=1] run function ttb:utility/tp/set_init_coords

# Warning
execute if score stampExists StampStatus matches 0 run function ttb:error_handling/raise_warning {message:"Cannot call, need stamp!"}