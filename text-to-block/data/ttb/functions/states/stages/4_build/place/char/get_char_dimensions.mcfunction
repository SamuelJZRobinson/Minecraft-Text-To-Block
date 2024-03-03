# Custom
$function ttb:fonts/$(font)/get/get_dimensions

# Calculate Total Height
scoreboard players operation charTotalHeight StampFont = charCapHeight StampFont
scoreboard players operation charTotalHeight StampFont += charDescenderHeight StampFont

# Get Flags
execute if score charID StampFont matches 0 run scoreboard players set newline StampFlags 1
execute if score charID StampFont matches 1 run scoreboard players set tab StampFlags 1