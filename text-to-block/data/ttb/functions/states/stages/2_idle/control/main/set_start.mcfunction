# Validate Stamp Exists
function ttb:states/2_idle/control/life/validate_stamp_exists

# Set State
scoreboard players set state StampStatus 3
schedule function ttb:states/manage_states 1t replace