# Get font

# If font accessible
  # Adjust Scores
  scoreboard players set started StampStatus 1

  # Align (h or v)
  execute if score fontOrientation StampSettings matches 1 run data modify storage minecraft:stamp filePath.align set value "h"
  execute if score fontOrientation StampSettings matches 2 run data modify storage minecraft:stamp filePath.align set value "v"

  # Set State
  scoreboard players set state GameStatus 4
  schedule function ttb:states/stages/manage_states 1t replace
# else
  # exception "Invalid font name"