# Rotate
execute as @e[type=minecraft:armor_stand,team=Stamp,limit=1] at @s run tp @s ~ ~ ~ ~-90 ~

### Is this necessary?
# Set Scores
scoreboard players remove direction Stamp 1
execute if score direction Stamp matches ..-1 run scoreboard players set direction Stamp 3