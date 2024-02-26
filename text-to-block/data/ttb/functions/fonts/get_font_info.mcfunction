# Set Font Values
scoreboard players set gotFont fontDraw 0
scoreboard players set charsetBlank fontDraw 1
scoreboard players set doUppercase StampSettings 0
scoreboard players set doLowercase StampSettings 0
scoreboard players set doNumbers StampSettings 0
scoreboard players set doSymbols StampSettings 0

# Get Font
execute if score fontID fontDraw matches 1 run function ttb:fonts/pixel/head

# Force Exception
execute if score gotFont fontDraw matches 0 run data modify storage minecraft:messages message set value "Misconfigured or non-existent font."
execute if score gotFont fontDraw matches 0 run function ttb:error_handling/raise_exception