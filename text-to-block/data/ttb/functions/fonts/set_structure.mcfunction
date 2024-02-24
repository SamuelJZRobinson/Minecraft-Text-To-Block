# Set Char Width
  # Set Default
  scoreboard players set charWidthMod stamper 0
  execute if score direction stamper matches 0..1 run scoreboard players operation charWidthMod stamper -= charWidth stamper
  execute if score direction stamper matches 2..3 run scoreboard players operation charWidthMod stamper += charWidth stamper
  
  # Offset Char Width To Remove Redstone
  # Align 2 is correct
  execute if score direction stamper matches 0..1 if score align fontDraw matches 1 run scoreboard players add charWidthMod stamper 1
  execute if score direction stamper matches 2..3 if score align fontDraw matches 1 run scoreboard players remove charWidthMod stamper 1

# Set Char Height
  # Set Default
  scoreboard players set charHeightMod stamper 0
  execute if score direction stamper matches 0..4 unless score direction stamper matches 1..2 run scoreboard players operation charHeightMod stamper -= capHeight fontInfo
  execute if score direction stamper matches 1..2 run scoreboard players operation charHeightMod stamper += capHeight fontInfo
  # Offset To Remove Redstone
  execute if score direction stamper matches 0..4 unless score direction stamper matches 1..2 run scoreboard players add charHeightMod stamper 1
  execute if score direction stamper matches 1..2 run scoreboard players remove charHeightMod stamper 1
  # Offset Descender
  execute if score descend stamper matches 1 if score direction stamper matches 0..4 unless score direction stamper matches 1..2 run scoreboard players operation charHeightMod stamper -= descenderHeight fontInfo
  execute if score descend stamper matches 1 if score direction stamper matches 1..2 run scoreboard players operation charHeightMod stamper += descenderHeight fontInfo

# Set Structure Block
execute if score direction stamper matches 0 run function ttb:fonts/set_structure_north
execute if score direction stamper matches 1 run function ttb:fonts/set_structure_east
execute if score direction stamper matches 2 run function ttb:fonts/set_structure_south
execute if score direction stamper matches 3 run function ttb:fonts/set_structure_west

# Reset Descend
scoreboard players set descend stamper 0