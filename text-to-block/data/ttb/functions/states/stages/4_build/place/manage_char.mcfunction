# Note
  # Arrays expect compound values (e.g. {x:1}) for indexes so read nested data with the same name to access target paths and values simultaneously (e.g. charID: {charID:1}). Case-sensitive.

# Get Next Test Char
execute store result storage minecraft:stamp charID{}.charID int 1 run scoreboard players get charID StampCharParse
function ttb:states/stages/4_build/place/get_next_char with storage minecraft:stamp charID

# Test Whether Char Is The Same
execute store success score noCharMatch StampCharParse run data modify storage minecraft:stamp charTest set from storage minecraft:stamp input[0]

# Loop
execute if score nonoCharMatch StampCharParse matches 1 if score charID StampCharParse < MAX_CHARID StampCharParse run function ttb:states/stages/4_build/place/manage_char
execute if score nonoCharMatch StampCharParse matches 0 run function ttb:states/stages/4_build/place/place_char