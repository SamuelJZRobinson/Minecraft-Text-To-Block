# Remove Input Char
execute if score align fontDraw matches 1 run data remove storage minecraft:charparse input[0]
execute if score align fontDraw matches 2 run data remove storage minecraft:charparse input[-1]

# Get Measurements
execute at @e[type=minecraft:armor_stand,team=stamper,limit=1] run function ttb:fonts/measurement/call/find_group