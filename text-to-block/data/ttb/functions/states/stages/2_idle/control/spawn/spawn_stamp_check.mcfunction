# Already Exists
execute if score stampExists StampStatus matches 1 run data modify storage minecraft:messages message set value "Stamp already exists!"
execute if score stampExists StampStatus matches 1 run function ttb:error_handling/raise_warning

# Pass
execute if score stampExists StampStatus matches 0 run function ttb:states/stages/2_idle/control/spawn/spawn_stamp