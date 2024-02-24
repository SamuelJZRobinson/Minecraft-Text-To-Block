# Get Coord
execute store result score xPos stamper run data get entity @s Pos[0] 10

# Modify Coords
  # North
  execute if score direction stamper matches 0 if score align fontDraw matches 1 run scoreboard players operation xPos stamper -= charWidth stamper
  execute if score direction stamper matches 0 if score align fontDraw matches 2 run scoreboard players operation xPos stamper += charWidth stamper
  # South
  execute if score direction stamper matches 2 if score align fontDraw matches 1 run scoreboard players operation xPos stamper += charWidth stamper
  execute if score direction stamper matches 2 if score align fontDraw matches 2 run scoreboard players operation xPos stamper -= charWidth stamper

# Modify Entity Value
execute store result entity @s Pos[0] double 0.1 run scoreboard players get xPos stamper