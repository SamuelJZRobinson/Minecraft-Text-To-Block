# Rotate
execute as @e[type=minecraft:armor_stand,team=stamper,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

# Modify Scores
scoreboard players add direction stamper 1
execute if score direction stamper matches 4.. run scoreboard players set direction stamper 0

# Reset Triggers
scoreboard players reset @s rotateStamper
scoreboard players enable @s rotateStamper