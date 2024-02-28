# Note
  # Arrays expect compound values (e.g. {x:1}) for indexes so read nested data with the same name to access target paths and values simultaneously (e.g. charID: {charID:1}). Case-sensitive.

# Get Next Test Char
execute store result storage minecraft:stamp charID{}.charID int 1 run scoreboard players get charID StampCharParse
function ttb:states/stages/4_build/place/get_next_char with storage minecraft:stamp charID

# Char = ?
# CharTest = charset[i]
# Char set CharTest
  # If fail then same
  # If pass then diffirent

# script try_char is
  # function get_char


# script get_char is
  # for char in fullCharset
    # increment charId StampStatus


    # Stamp char
    # Move to arrow

# Fail


# Loop
scoreboard players add charID StampStatus 1
execute if score charID