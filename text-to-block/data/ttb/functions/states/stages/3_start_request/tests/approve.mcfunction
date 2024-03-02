tellraw @a "Approve start"

# Set Score
scoreboard players set started StampStatus 1

# Align (h or v)
execute if score fontAxis StampSettings matches 0 run data modify storage minecraft:stamp filePath.axis set value "h"
execute if score fontAxis StampSettings matches 1 run data modify storage minecraft:stamp filePath.axis set value "v"

# Set State
scoreboard players set state StampStatus 4
schedule function ttb:states/stages/manage_states 1t replace