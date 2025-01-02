# Set Score
scoreboard players set fontExists StampFont 0

# Get Font
$function ttb:fonts/$(font)/get/get_font

# Validate Input
execute if score fontExists StampFont matches ..-1 run scoreboard players set fontExists StampFont 0
execute if score fontExists StampFont matches 2.. run scoreboard players set fontExists StampFont 1

# Warning
execute if score fontExists StampFont matches 0 run function ttb:utility/exceptions/raise_warning {message:"Cannot start, unknown font name!"}