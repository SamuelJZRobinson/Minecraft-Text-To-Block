# Set Score
scoreboard players set fontExists StampFont 0

# Get Font
$function ttb:fonts/$(font)/get/get_font

# Warning
execute if score fontExists StampFont matches 0 run function ttb:error_handling/raise_warning {message:"Cannot start, unknown font name!"}