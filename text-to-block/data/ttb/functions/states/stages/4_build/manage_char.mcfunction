# Note
  # Arrays expect compound values (e.g. {x:1}) for indexes so read nested data with the same name to access target paths and values simultaneously (e.g. charID: {charID:1}). Case-sensitive.

# Check Char Test
execute store result storage minecraft:stamp charID{}.charID int 1 run scoreboard players get charID StampCharParse
function ttb:states/stages/4_build/check/check_chartest with storage minecraft:stamp charID

# Loop
execute if score nonoCharMatch StampCharParse matches 1 if score charID StampCharParse < MAX_CHAR_ID StampCharParse run function ttb:states/stages/4_build/manage_char
execute if score nonoCharMatch StampCharParse matches 0 run function ttb:states/stages/4_build/place/place_char