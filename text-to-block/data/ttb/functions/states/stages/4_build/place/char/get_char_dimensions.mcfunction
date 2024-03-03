# Custom
$function ttb:fonts/$(font)/get/get_dimensions

# Calculate Total Height
scoreboard players operation charTotalHeight StampFont = charCapHeight StampFont
scoreboard players operation charTotalHeight StampFont += charDescenderHeight StampFont