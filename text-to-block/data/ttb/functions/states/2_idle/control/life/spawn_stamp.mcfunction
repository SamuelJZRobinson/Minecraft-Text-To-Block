# Validate Stamp Exists
function ttb:states/2_idle/control/life/validate_stamp_exists

# Warning
execute if score stampExists StampStatus matches 1 run function ttb:utility/exceptions/raise_warning {message:"Cannot spawn, stamp already exists!"}

# Spawn
execute if score stampExists StampStatus matches 0 unless entity @e[type=armor_stand,team=Stamp,tag=stamp] run function ttb:states/2_idle/control/life/spawn_stamp_pass