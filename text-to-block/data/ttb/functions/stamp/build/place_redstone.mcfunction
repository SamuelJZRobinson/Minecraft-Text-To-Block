# Notes
  #  Schedule is provided to let structures process.

# Place Redstone
execute if score charID StampCharParse matches 3.. run setblock ^ ^ ^1 minecraft:redstone_block destroy

# Reduce Input Length
scoreboard players remove inputLength StampCharParse 1

# Move Stamp
execute unless score newline Stamp matches 2 if score inputLength StampCharParse matches 1.. run function ttb:stamp/move/manage_move

# Reset Newline Char
scoreboard players set newline Stamp 0

# Repeat Test Cycle
schedule function ttb:check/set_char 1t replace