# Get font

# If font accessible
  # Adjust Scores
  scoreboard players set started StampStatus 1

  # Set State
  scoreboard players set state GameStatus 4
  schedule function ttb:states/stages/manage_states 1t replace
# else
  # exception "Invalid font name"