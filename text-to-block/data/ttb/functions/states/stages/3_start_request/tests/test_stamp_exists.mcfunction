# Warning
execute if score stampExists StampStatus matches 0 run data modify storage minecraft:messages message set value "Cannot start, stamp doesn't exist"
execute if score stampExists StampStatus matches 0 run function ttb:error_handling/raise_warning