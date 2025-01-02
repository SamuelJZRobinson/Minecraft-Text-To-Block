# Count
execute store result score inputLength StampFont run data get storage minecraft:stamp input

# Warning
execute if score inputLength StampFont matches 0 run function ttb:utility/exceptions/raise_warning {message:"Finished, input empty!"}