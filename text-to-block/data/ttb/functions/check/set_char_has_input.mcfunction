# Set charID
scoreboard players set charID StampCharParse 1

# Copy First Input Character
execute if score textAlign StampSettings matches 1 run data modify storage minecraft:StampCharParse checkcopy set from storage minecraft:StampCharParse input[0]
execute if score textAlign StampSettings matches 2 run data modify storage minecraft:StampCharParse checkcopy set from storage minecraft:StampCharParse input[-1]

# Copy Unique Charset For Testing
data modify storage minecraft:charsetunique charsettest set from storage minecraft:charsetunique charset

# Proceed
function ttb:check/test_char