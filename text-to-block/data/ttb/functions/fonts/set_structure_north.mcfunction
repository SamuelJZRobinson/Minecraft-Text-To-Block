# Set Rotation
data modify block ~ ~ ~ rotation set value "NONE"
# Set Height Offset
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get charHeightMod stamper
# Set Left/Right Offset
execute if score align fontDraw matches 1 store result block ~ ~ ~ posX int 1 run scoreboard players get charWidthMod stamper