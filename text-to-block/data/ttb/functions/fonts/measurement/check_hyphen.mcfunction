scoreboard players operation lineLeft Stamp = MOVE_LIMIT Stamp
scoreboard players operation lineLeft Stamp -= lineMoved Stamp
execute if score lineLeft Stamp matches ..5 run scoreboard players set newline Stamp 1
execute if score lineLeft Stamp <= charWidth Stamp run scoreboard players set newline Stamp 1
# # WhiteSpace
# execute if score newline Stamp matches 1 if score charID StampCharParse matches 1 run scoreboard players set newline Stamp 2