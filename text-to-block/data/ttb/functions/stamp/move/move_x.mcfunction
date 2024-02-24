# Get Coord
execute store result score xPos StampStatus run data get entity @s Pos[0] 10

# Modify Coords
  # North
  execute if score direction Stamp matches 0 if score textAlign stampSettings matches 1 run scoreboard players operation xPos StampStatus -= charWidth Stamp
  execute if score direction Stamp matches 0 if score textAlign stampSettings matches 2 run scoreboard players operation xPos StampStatus += charWidth Stamp
  # South
  execute if score direction Stamp matches 2 if score textAlign stampSettings matches 1 run scoreboard players operation xPos StampStatus += charWidth Stamp
  execute if score direction Stamp matches 2 if score textAlign stampSettings matches 2 run scoreboard players operation xPos StampStatus -= charWidth Stamp

# Modify Entity Value
execute store result entity @s Pos[0] double 0.1 run scoreboard players get xPos StampStatus