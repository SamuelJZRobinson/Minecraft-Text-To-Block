# Objective
scoreboard objectives add StampFont dummy {"bold":true,"color":"white","text":"Stamp Font"}
# Error Handling
scoreboard players set fontExists StampFont 0
scoreboard players set charsetsEnabled StampFont 0
# Declare Subsets
scoreboard players set doSymbols StampFont 0
scoreboard players set doNumbers StampFont 0
scoreboard players set doUppercases StampFont 0
scoreboard players set doLowercases StampFont 0
# Dimensions
  # Height
  scoreboard players set charCapHeight StampFont 0
  scoreboard players set charDescenderHeight StampFont 0
  scoreboard players set charTotalHeight StampFont 0
  scoreboard players set charHeightMod StampFont 0
  # Width
  scoreboard players set charWidth StampFont 0
  scoreboard players set charWidthMod StampFont 0
# Char Parse
scoreboard players set MAX_CHAR_ID StampFont 0
scoreboard players set charID StampFont 0
scoreboard players set inputLength StampFont 0
scoreboard players set noCharMatch StampFont 1