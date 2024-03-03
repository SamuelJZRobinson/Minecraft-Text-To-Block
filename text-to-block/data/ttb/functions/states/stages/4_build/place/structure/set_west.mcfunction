# Set Rotation
data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"

# Set Descend Offset
scoreboard players set charHeightMod StampFont 0
scoreboard players operation charHeightMod StampFont -= charCapHeight StampFont
execute if score descend StampFlags matches 1 run scoreboard players operation charHeightMod StampFont -= charDescenderHeight StampFont
execute store result block ~ ~ ~ posX int 1 run scoreboard players get charHeightMod StampFont

# Set Side Offset
scoreboard players set charWidthMod StampFont 0
scoreboard players operation charWidthMod StampFont += charWidth StampFont
scoreboard players remove charWidthMod StampFont 1
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get charWidthMod StampFont