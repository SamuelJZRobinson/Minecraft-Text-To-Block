# Set Structure
setblock ~ ~ ~ structure_block{posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
$data merge block ~ ~ ~ {name:"minecraft:fonts/$(font)/$(axis)/$(subset)/$(char)"}

# Set Rotation
  # South
  execute if score yaw StampStatus matches 0 run data modify block ~ ~ ~ rotation set value "NONE"
  # West
  execute if score yaw StampStatus matches 90 run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
  # North
  execute if score yaw StampStatus matches 180 run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
  # East
  execute if score yaw StampStatus matches 270 run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"

# Set Descend (depends on axis)
# execute store result block ~ ~ ~ posZ int 1 run scoreboard players get charHeightMod Stamp

# setblock ~ ~1 ~ redstone_block
# setblock ~ ~1 ~ air