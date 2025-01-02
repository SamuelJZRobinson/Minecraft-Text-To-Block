# Custom
$function ttb:fonts/$(font)/get/get_dimensions

# Validate Dimensions
function ttb:states/4_build/place/char/validate_char_dimensions

# Calculate Total Height
scoreboard players operation charTotalHeight StampFont = charCapHeight StampFont
scoreboard players operation charTotalHeight StampFont += charDescenderHeight StampFont