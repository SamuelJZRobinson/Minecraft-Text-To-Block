# Get Coord
execute store result score zPos stamper run data get entity @s Pos[2] 10

# Modify Coords
  # East
  execute if score direction stamper matches 1 if score align fontDraw matches 1 run scoreboard players operation zPos stamper -= charWidth stamper
  execute if score direction stamper matches 1 if score align fontDraw matches 2 run scoreboard players operation zPos stamper += charWidth stamper
  # West
  execute if score direction stamper matches 3 if score align fontDraw matches 1 run scoreboard players operation zPos stamper += charWidth stamper
  execute if score direction stamper matches 3 if score align fontDraw matches 2 run scoreboard players operation zPos stamper -= charWidth stamper

# Modify Entity Value
execute store result entity @s Pos[2] double 0.1 run scoreboard players get zPos stamper