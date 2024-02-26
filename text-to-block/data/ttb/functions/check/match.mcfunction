# Remove Input Char
# execute if score textAlign StampSettings matches 1 run data remove storage minecraft:StampFontParse input[0]
execute if score textAlign StampSettings matches 2 run data remove storage minecraft:StampFontParse input[-1]

# Get Measurements
execute at @e[type=minecraft:armor_stand,team=Stamp,limit=1] run function ttb:fonts/measurement/call/find_group