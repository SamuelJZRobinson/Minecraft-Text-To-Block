# Teleport To Player
execute at @s rotated as @e[type=minecraft:armor_stand,team=stamper,limit=1] run tp @e[type=minecraft:armor_stand,team=stamper,limit=1] ~ ~ ~ ~ ~

# Align XYZ Axis
execute as @e[type=minecraft:armor_stand,team=stamper,limit=1] at @s align xz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~

# Reset Triggers
scoreboard players reset @s teleportStamper
scoreboard players enable @s teleportStamper