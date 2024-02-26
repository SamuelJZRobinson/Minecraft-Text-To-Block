# Set Rotation
data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
# Set Height Offset
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get charHeightMod Stamp
# Set Left/Right Offset
execute if score textAlign StampSettings matches 1 store result block ~ ~ ~ posX int 1 run scoreboard players get charWidthMod Stamp