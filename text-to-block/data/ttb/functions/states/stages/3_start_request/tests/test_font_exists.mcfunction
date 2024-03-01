# Set Score
scoreboard players set fontExists StampFontInfo 0

# Get Font
$function ttb:fonts/$(font)/get/get_font

# Warning
execute if score fontExists StampFontInfo matches 0 run data modify storage minecraft:messages message set value "Cannot start, unknown font name"
execute if score fontExists StampFontInfo matches 0 run function ttb:error_handling/raise_warning