scoreboard players operation lineLeft stamper = MOVE_LIMIT stamper
scoreboard players operation lineLeft stamper -= lineMoved stamper
execute if score lineLeft stamper matches ..5 run scoreboard players set newline stamper 1
execute if score lineLeft stamper <= charWidth stamper run scoreboard players set newline stamper 1
# # WhiteSpace
# execute if score newline stamper matches 1 if score charID charParse matches 1 run scoreboard players set newline stamper 2