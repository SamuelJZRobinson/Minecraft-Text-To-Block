# Dimensions
scoreboard players set charCapHeight StampFont 4
scoreboard players set charDescenderHeight StampFont 2
scoreboard players set charGenericWidth StampFont 4

### How is doSubset implemented?
# Char Width
execute if score charID StampFont matches 3..34 run function ttb:fonts/pixel/set/set_symbols
execute if score charID StampFont matches 35..44 run function ttb:fonts/pixel/set/set_numbers
execute if score charID StampFont matches 45..70 run function ttb:fonts/pixel/set/set_uppercases
execute if score charID StampFont matches 71..96 run function ttb:fonts/pixel/set/set_lowercases