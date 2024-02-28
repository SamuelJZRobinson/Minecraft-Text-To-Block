# Checks
  # Newline
  execute if score lineDistance StampStatus >= lineDistanceLimit StampSettings run function ttb:states/stages/4_build/move/goto_newline

  # Air Ahead
  execute if score checkCollisions StampSettings matches 1 run function ttb:states/stages/4_build/move/check_collisions

  # Input Not Blank
  execute store result score inputLength StampCharParse run data get storage minecraft:stamp input
  execute if score inputLength StampCharParse matches 1 run scoreboard players set charID StampCharParse 0
  execute if score inputLength StampCharParse matches 1 run scoreboard players set noCharMatch StampCharParse 1
  execute if score inputLength StampCharParse matches 1 run function ttb:states/stages/4_build/place/manage_char
  # If inputLength not ..0
    # end





# Read char ID
# If subset avaialble
  # Paste char with file path (font name)