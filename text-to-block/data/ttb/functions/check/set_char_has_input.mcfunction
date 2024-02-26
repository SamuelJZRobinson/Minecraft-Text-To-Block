# Set charID
scoreboard players set charID StampFontParse 1

# Copy First Input Character
execute if score textAlign StampSettings matches 1 run data modify storage minecraft:StampFontParse checkcopy set from storage minecraft:StampFontParse input[0]
execute if score textAlign StampSettings matches 2 run data modify storage minecraft:StampFontParse checkcopy set from storage minecraft:StampFontParse input[-1]

# Copy Unique Charset For Testing
data modify storage minecraft:charsetunique charsettest set from storage minecraft:charsetunique charset

# Proceed
function ttb:check/test_char