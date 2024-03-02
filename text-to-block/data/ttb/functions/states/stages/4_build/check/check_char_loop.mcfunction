# Note
  # Arrays expect compound values (e.g. {x:1}) for indexes so read nested data with the same name to access target paths and values simultaneously (e.g. charID: {charID:1}). Case-sensitive.

# Get Next Char In Charset
execute store result storage minecraft:stamp charID{}.charID int 1 run scoreboard players get charID StampCharParse
function ttb:states/stages/4_build/check/get_char_test with storage minecraft:stamp charID

# Override Input Char Over Char Test To Look For A Match
execute store success score noCharMatch StampCharParse run data modify storage minecraft:stamp charTest set from storage minecraft:stamp input[0]

# Loop
execute if score noCharMatch StampCharParse matches 1 if score charID StampCharParse < MAX_CHAR_ID StampCharParse run function ttb:states/stages/4_build/check/check_char_loop
execute if score noCharMatch StampCharParse matches 0 run function ttb:states/stages/4_build/place/manage_place_char