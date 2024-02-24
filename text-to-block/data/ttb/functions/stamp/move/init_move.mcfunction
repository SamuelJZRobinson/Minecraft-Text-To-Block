# Move Padding (Postponed)

# Get Coords
execute store result score xPosInit stamper run data get entity @s Pos[0] 10
execute store result score zPosInit stamper run data get entity @s Pos[2] 10

# Set Default
scoreboard players set lineMoved stamper 0
scoreboard players set lineCount stamper 0