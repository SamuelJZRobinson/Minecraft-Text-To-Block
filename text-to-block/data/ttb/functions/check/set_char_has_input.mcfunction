# Set charID
scoreboard players set charID charParse 1

# Copy First Input Character
execute if score align fontDraw matches 1 run data modify storage minecraft:charparse checkcopy set from storage minecraft:charparse input[0]
execute if score align fontDraw matches 2 run data modify storage minecraft:charparse checkcopy set from storage minecraft:charparse input[-1]

# Copy Unique Charset For Testing
data modify storage minecraft:charsetunique charsettest set from storage minecraft:charsetunique charset

# Proceed
function ttb:check/test_char