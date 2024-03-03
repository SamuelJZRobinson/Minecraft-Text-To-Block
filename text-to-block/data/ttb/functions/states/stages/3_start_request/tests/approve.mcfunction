# Set Score
scoreboard players set started StampStatus 1
scoreboard players set lineCount StampStatus 1
scoreboard players set lineDistance StampStatus 0

# Align (h or v)
execute if score fontAxis StampSettings matches 0 run data modify storage minecraft:stamp filePath.axis set value "h"
execute if score fontAxis StampSettings matches 1 run data modify storage minecraft:stamp filePath.axis set value "v"

# Get Char Dimensions (Get Height Initially For Newline)
function ttb:states/stages/4_build/place/char/get_char_dimensions with storage minecraft:stamp filePath

# Set State
scoreboard players set state StampStatus 4
schedule function ttb:states/stages/manage_states 1t replace