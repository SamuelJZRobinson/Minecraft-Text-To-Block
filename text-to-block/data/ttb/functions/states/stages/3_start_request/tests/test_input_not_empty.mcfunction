### If more input modes are added then alter this

# Get Input Length
function ttb:states/stages/2_idle/control/input/set/set_paste_input
execute store result score inputLength StampFont run data get storage minecraft:stamp input

# Warning
execute if score inputLength StampFont matches 0 run data modify storage minecraft:messages message set value "Cannot start, input blank"
execute if score inputLength StampFont matches 0 run function ttb:error_handling/raise_warning