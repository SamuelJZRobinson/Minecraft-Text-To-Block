# Notes
  # Direction   Yaw    Forward   Left-Align
  # North       180    -Z        -X
  # East        270    +X        -Z
  # South       0      +Z        +X
  # West        90     -X        +Z

# Notes
  # Card    Score   Front   Left-Align
  # North   0       -Z      -X
  # East    1       +X      -Z
  # South   2       +Z      +X
  # West    3       -X      +Z

# Place Structure
setblock ~ ~ ~ structure_block{posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace

# Set Char
$data merge block ~ ~ ~ {name:"minecraft:fonts/$(font)/$(axis)/$(subset)/$(char)"}

# Set Rotation
  # North
  execute if score yaw StampStatus matches 180 run function ttb:states/stages/4_build/place/structure/set_north
  # East
  execute if score yaw StampStatus matches 270 run function ttb:states/stages/4_build/place/structure/set_east
  # South
  execute if score yaw StampStatus matches 0 run function ttb:states/stages/4_build/place/structure/set_south
  # West
  execute if score yaw StampStatus matches 90 run function ttb:states/stages/4_build/place/structure/set_west

# Set Descend (depends on axis)
# Default






# execute if score yaw StampStatus matches 180..270 run scoreboard players operation charWidthMod StampFont -= charWidth StampFont
# execute if score yaw StampStatus matches 0..90 run scoreboard players operation charWidthMod StampFont += charWidth StampFont
# execute store result block ~ ~ ~ posX int 1 run scoreboard players get charWidthMod StampFont

# execute if score direction stamper matches 0..1
# execute if score direction stamper matches 2..3 

# scoreboard players operation charWidthMod StampFont = charWidth StampFont
# scoreboard players remove charWidthMod StampFont 2
# scoreboard players operation charWidthMod StampFont *= NEGATIVE_FLIP StampStatus


# Descender

# Activate
# setblock ~ ~1 ~ redstone_block
# setblock ~ ~1 ~ air