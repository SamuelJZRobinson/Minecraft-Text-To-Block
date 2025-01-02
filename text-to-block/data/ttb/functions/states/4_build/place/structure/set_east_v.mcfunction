# Set Rotation
data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"

# Set Front Offset
scoreboard players set charHeightMod StampFont 0
scoreboard players add charHeightMod StampFont 1
execute store result block ~ ~ ~ posX int 1 run scoreboard players get charHeightMod StampFont

# Set Descend Offset
scoreboard players set charHeightMod StampFont 0
execute if score descend StampFlags matches 0 run scoreboard players set charHeightMod StampFont 0
execute if score descend StampFlags matches 0 run scoreboard players operation charHeightMod StampFont += charDescenderHeight StampFont
execute store result block ~ ~ ~ posY int 1 run scoreboard players get charHeightMod StampFont

# Set Side Offset
scoreboard players set charWidthMod StampFont 0
scoreboard players operation charWidthMod StampFont -= charWidth StampFont 
scoreboard players add charWidthMod StampFont 1
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get charWidthMod StampFont