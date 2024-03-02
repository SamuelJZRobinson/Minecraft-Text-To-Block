# Set Rotation
data modify block ^ ^ ^1 rotation set value "COUNTERCLOCKWISE_90"

# Set Descend Offset
scoreboard players set charHeightMod StampFont 0
scoreboard players operation charHeightMod StampFont -= charCapHeight StampFont
execute store result block ^ ^ ^1 posX int 1 run scoreboard players get charHeightMod StampFont

# Set Side Offset
scoreboard players set charWidthMod StampFont 0
scoreboard players operation charWidthMod StampFont += charWidth StampFont

scoreboard players remove charWidthMod StampFont 1

execute store result block ^ ^ ^1 posZ int 1 run scoreboard players get charWidthMod StampFont