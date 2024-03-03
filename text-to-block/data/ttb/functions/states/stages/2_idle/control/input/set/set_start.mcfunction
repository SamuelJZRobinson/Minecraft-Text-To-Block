# Validate Stamp Exists
function ttb:states/stages/2_idle/control/life/validate_stamp_exists

# Set State
scoreboard players set state StampStatus 3
schedule function ttb:states/stages/manage_states 1t replace