# Note
  # Arrays expect compound values (e.g. {x:1}) for indexes so read nested data with the same name to access target paths and values simultaneously (e.g. charID: {charID:1}). Case-sensitive.

tellraw @a "checkChar"

# Get Next Test Char
execute store result storage minecraft:stamp charID{}.charID int 1 run scoreboard players get charID StampFont
function ttb:states/stages/4_build/check/get_char_test with storage minecraft:stamp charID

# Compare Input Char With Test Char
execute store success score noCharMatch StampFont run data modify storage minecraft:stamp charTest set from storage minecraft:stamp input[0]

# Success
### Remove when script works properly to avoid danger
execute if score noCharMatch StampFont matches 0 run schedule function ttb:states/stages/4_build/place/manage_place_char 1t replace

# Out of Range
execute if score noCharMatch StampFont matches 1 if score charID StampFont >= MAX_CHAR_ID StampFont run function ttb:states/stages/4_build/check/check_char_out_range

# Fail Loop
execute if score noCharMatch StampFont matches 1 if score charID StampFont < MAX_CHAR_ID StampFont run schedule function ttb:states/stages/4_build/check/check_char_fail 1t replace