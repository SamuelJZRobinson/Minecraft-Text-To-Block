# Rotate
execute as @e[type=minecraft:armor_stand,team=stamper,limit=1] at @s run tp @s ~ ~ ~ ~-90 ~

# Modify Scores
scoreboard players remove direction stamper 1
execute if score direction stamper matches ..-1 run scoreboard players set direction stamper 3

# Reset Triggers
scoreboard players reset @s rotateStamper
scoreboard players enable @s rotateStamper