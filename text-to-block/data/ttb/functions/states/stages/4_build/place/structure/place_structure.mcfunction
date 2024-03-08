# Notes
  # Direction   Yaw    Front   Left-Align
  # North       180    -Z      -X
  # East        270    +X      -Z
  # South       0      +Z      +X
  # West        90     -X      +Z
  # Descend application is swapped for the vertical axis to ensure chars stay within the particle area.

# Place Structure
setblock ~ ~ ~ structure_block{posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace

# Set Char
$data merge block ~ ~ ~ {name:"minecraft:fonts/$(font)/$(axis)/$(subset)/$(char)"}

# Set Direction
  # North
  execute if score yaw StampStatus matches 180 if score fontAxis StampSettings matches 0 run function ttb:states/stages/4_build/place/structure/set_north_h
  execute if score yaw StampStatus matches 180 if score fontAxis StampSettings matches 1 run function ttb:states/stages/4_build/place/structure/set_north_v
  # East
  execute if score yaw StampStatus matches 270 if score fontAxis StampSettings matches 0 run function ttb:states/stages/4_build/place/structure/set_east_h
  execute if score yaw StampStatus matches 270 if score fontAxis StampSettings matches 1 run function ttb:states/stages/4_build/place/structure/set_east_v
  # South
  execute if score yaw StampStatus matches 0 if score fontAxis StampSettings matches 0 run function ttb:states/stages/4_build/place/structure/set_south_h
  execute if score yaw StampStatus matches 0 if score fontAxis StampSettings matches 1 run function ttb:states/stages/4_build/place/structure/set_south_v
  # West
  execute if score yaw StampStatus matches 90 if score fontAxis StampSettings matches 0 run function ttb:states/stages/4_build/place/structure/set_west_h
  execute if score yaw StampStatus matches 90 if score fontAxis StampSettings matches 1 run function ttb:states/stages/4_build/place/structure/set_west_v

# Activate
setblock ~ ~1 ~ redstone_block

# Clear
setblock ~ ~1 ~ air
setblock ~ ~ ~ air

# Set Flags
scoreboard players set descend StampFlags 0