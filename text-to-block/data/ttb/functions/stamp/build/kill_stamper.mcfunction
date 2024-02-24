# Kill
execute as @e[type=minecraft:armor_stand,team=stamper,limit=1] run scoreboard players set stamperExists stamper 0
execute as @e[type=minecraft:armor_stand,team=stamper] run kill @s

# Set Value
scoreboard players set stamperExists stamper 0

# Reset Triggers
scoreboard players reset @s killStamper
scoreboard players enable @s killStamper