# Width
  # 1
  execute if score charID StampFont matches 79 run scoreboard players set charWidth StampFont 1
  execute if score charID StampFont matches 82 run scoreboard players set charWidth StampFont 1
  # 2
  execute if score charID StampFont matches 80 run scoreboard players set charWidth StampFont 2
  # 3
  execute if score charID StampFont matches 81 run scoreboard players set charWidth StampFont 3
  execute if score charID StampFont matches 88..90 run scoreboard players set charWidth StampFont 3
  execute if score charID StampFont matches 94..96 run scoreboard players set charWidth StampFont 3
  # 4
    # Reference default width
  # 5
  execute if score charID StampFont matches 83 run scoreboard players set charWidth StampFont 5
  execute if score charID StampFont matches 92..93 run scoreboard players set charWidth StampFont 5

# Descend
execute if score charID StampFont matches 77 run scoreboard players set descend StampFlags 1
execute if score charID StampFont matches 86..87 run scoreboard players set descend StampFlags 1