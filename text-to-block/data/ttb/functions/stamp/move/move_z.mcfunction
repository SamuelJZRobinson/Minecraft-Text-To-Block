# Get Coord
execute store result score zPos StampStatus run data get entity @s Pos[2] 10

# Modify Coords
  # East
  execute if score direction Stamp matches 1 if score textAlign StampSettings matches 1 run scoreboard players operation zPos StampStatus -= charWidth Stamp
  execute if score direction Stamp matches 1 if score textAlign StampSettings matches 2 run scoreboard players operation zPos StampStatus += charWidth Stamp
  # West
  execute if score direction Stamp matches 3 if score textAlign StampSettings matches 1 run scoreboard players operation zPos StampStatus += charWidth Stamp
  execute if score direction Stamp matches 3 if score textAlign StampSettings matches 2 run scoreboard players operation zPos StampStatus -= charWidth Stamp

# Modify Entity Value
execute store result entity @s Pos[2] double 0.1 run scoreboard players get zPos StampStatus