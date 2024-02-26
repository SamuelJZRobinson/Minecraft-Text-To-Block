# Reduce Input Length
scoreboard players remove inputLength StampFontParse 1

# Raise Warning
data modify storage minecraft:messages message set value "Incompatible char."
function ttb:error_handling/raise_warning

# Remove Input Char
execute if score textAlign StampSettings matches 1 run data remove storage minecraft:StampFontParse input[0]
execute if score textAlign StampSettings matches 2 run data remove storage minecraft:StampFontParse input[-1]

# Repeat Test Cycle
function ttb:check/set_char