# Count
execute store result score inputLength StampCharParse run data get storage minecraft:stamp input

# Warning
execute if score inputLength StampCharParse matches 0 run data modify storage minecraft:messages message set value "No more input chars to test"
execute if score inputLength StampCharParse matches 0 run function ttb:error_handling/raise_warning