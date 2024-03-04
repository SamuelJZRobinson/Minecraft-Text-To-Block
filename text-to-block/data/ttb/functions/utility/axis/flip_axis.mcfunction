# Notes
  # Structures in the southern direction allow perfect axis flipping.

# Get Data
  # Pos
  execute store result storage minecraft:temp structure.posY int 1 run data get block ~ ~-1 ~ posY
  execute store result storage minecraft:temp structure.posZ int 1 run data get block ~ ~-1 ~ posZ
  # Size
  execute store result storage minecraft:temp structure.sizeY int 1 run data get block ~ ~-1 ~ sizeY
  execute store result storage minecraft:temp structure.sizeZ int 1 run data get block ~ ~-1 ~ sizeZ

# Swap Data
  # Pos
  data modify block ~ ~-1 ~ posY set from storage minecraft:temp structure.posZ
  data modify block ~ ~-1 ~ posZ set from storage minecraft:temp structure.posY
  # Size
  data modify block ~ ~-1 ~ sizeY set from storage minecraft:temp structure.sizeZ
  data modify block ~ ~-1 ~ sizeZ set from storage minecraft:temp structure.sizeY