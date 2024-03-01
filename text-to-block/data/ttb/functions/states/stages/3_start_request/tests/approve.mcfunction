tellraw @a "Approve start"

# Set Score
scoreboard players set started StampStatus 1

# Calculate Newline Height
scoreboard players operation newlineHeight StampStatusFontInfo = totalHeight StampSettings
scoreboard players operation newlineHeight StampStatusFontInfo += xHeight StampSettings
scoreboard players operation newlineHeight StampStatusFontInfo += lineHeight fontDraw

# Align (h or v)
execute if score fontAxis StampSettings matches 1 run data modify storage minecraft:stamp filePath.align set value "h"
execute if score fontAxis StampSettings matches 2 run data modify storage minecraft:stamp filePath.align set value "v"

# Set State
scoreboard players set state GameStatus 4
schedule function ttb:states/stages/manage_states 1t replace