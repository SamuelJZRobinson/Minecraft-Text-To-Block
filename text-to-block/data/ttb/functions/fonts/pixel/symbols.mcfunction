### Ensure scoreboards are adjusted correctly, placeholders in effect

# Width 1
execute if score char x matches 4 run scoreboard players set charWidth y 1
execute if score char x matches 17 run scoreboard players set charWidth y 1
execute if score char x matches 19 run scoreboard players set charWidth y 1
execute if score char x matches 33 run scoreboard players set charWidth y 1

# Width 2
execute if score char x matches 10..12 run scoreboard players set charWidth y 2
execute if score char x matches 15..16 run scoreboard players set charWidth y 2
execute if score char x matches 20 run scoreboard players set charWidth y 2
execute if score char x matches 31 run scoreboard players set charWidth y 2

# Width 3
execute if score char x matches 14 run scoreboard players set charWidth y 3
execute if score char x matches 21..23 run scoreboard players set charWidth y 3
execute if score char x matches 26 run scoreboard players set charWidth y 3
execute if score char x matches 28 run scoreboard players set charWidth y 3
execute if score char x matches 29 run scoreboard players set charWidth y 3
execute if score char x matches 32 run scoreboard players set charWidth y 3
execute if score char x matches 34 run scoreboard players set charWidth y 3

# Width 4
  # Refer to generic width

# Width 5
execute if score char x matches 6 run scoreboard players set charWidth y 5