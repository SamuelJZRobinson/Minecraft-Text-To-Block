# Set Char Width
  # Set Default
  scoreboard players set charWidthMod Stamp 0
  execute if score direction Stamp matches 0..1 run scoreboard players operation charWidthMod Stamp -= charWidth Stamp
  execute if score direction Stamp matches 2..3 run scoreboard players operation charWidthMod Stamp += charWidth Stamp
  
  # Offset Char Width To Remove Redstone
  # Align 2 is correct
  execute if score direction Stamp matches 0..1 if score textAlign stampSettings matches 1 run scoreboard players add charWidthMod Stamp 1
  execute if score direction Stamp matches 2..3 if score textAlign stampSettings matches 1 run scoreboard players remove charWidthMod Stamp 1

# Set Char Height
  # Set Default
  scoreboard players set charHeightMod Stamp 0
  execute if score direction Stamp matches 0..4 unless score direction Stamp matches 1..2 run scoreboard players operation charHeightMod Stamp -= capHeight fontInfo
  execute if score direction Stamp matches 1..2 run scoreboard players operation charHeightMod Stamp += capHeight fontInfo
  # Offset To Remove Redstone
  execute if score direction Stamp matches 0..4 unless score direction Stamp matches 1..2 run scoreboard players add charHeightMod Stamp 1
  execute if score direction Stamp matches 1..2 run scoreboard players remove charHeightMod Stamp 1
  # Offset Descender
  execute if score descend Stamp matches 1 if score direction Stamp matches 0..4 unless score direction Stamp matches 1..2 run scoreboard players operation charHeightMod Stamp -= descenderHeight fontInfo
  execute if score descend Stamp matches 1 if score direction Stamp matches 1..2 run scoreboard players operation charHeightMod Stamp += descenderHeight fontInfo

# Set Structure Block
execute if score direction Stamp matches 0 run function ttb:fonts/set_structure_north
execute if score direction Stamp matches 1 run function ttb:fonts/set_structure_east
execute if score direction Stamp matches 2 run function ttb:fonts/set_structure_south
execute if score direction Stamp matches 3 run function ttb:fonts/set_structure_west

# Reset Descend
scoreboard players set descend Stamp 0