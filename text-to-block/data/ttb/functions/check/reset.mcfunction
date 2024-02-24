# Notes
  # Script order follows ttb:check/reset -> ttb:check/set_char -> ttb:set_char_has_input -> ttb:check/test_char

# Clear Check
data remove storage minecraft:charparse check

# Copy Charsets That The Font Supports
data modify storage minecraft:charsetunique charset set from storage minecraft:charset other
execute if score hasUppercase fontInfo matches 1 run data modify storage minecraft:charsetunique charset append from storage minecraft:charset uppercase[]
execute if score hasLowercase fontInfo matches 1 run data modify storage minecraft:charsetunique charset append from storage minecraft:charset lowercase[]
execute if score hasNumbers fontInfo matches 1 run data modify storage minecraft:charsetunique charset append from storage minecraft:charset numbers[]
execute if score hasSymbols fontInfo matches 1 run data modify storage minecraft:charsetunique charset append from storage minecraft:charset symbols[]

# Set Bool To False
scoreboard players set bool charParse 1

# Initial Move
execute as @e[type=armor_stand,team=Stamp,limit=1] run function ttb:stamp/move/init_move

# Proceed
function ttb:check/set_char