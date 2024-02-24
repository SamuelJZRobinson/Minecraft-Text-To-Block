# Get Input
function ttb:input

# Keep Values In Range
execute if score lineHeight fontDraw matches ..0 run scoreboard players set lineHeight fontDraw 1
execute if score lineHeight fontDraw matches 6.. run scoreboard players set lineHeight fontDraw 5

# Check For Stamp
execute store result score stampExists StampStatus if entity @e[type=minecraft:armor_stand,team=Stamp,limit=1]

# Get Input Array Length
execute store result score inputLength charParse run data get storage minecraft:charparse input

# Raise Exceptions
  # No Stamp
  execute if score stampExists StampStatus matches 0 run data modify storage minecraft:messages message set value "Must place the Stamp."
  execute if score stampExists StampStatus matches 0 run function ttb:error_handling/raise_exception
  # Blank Input
  execute if score inputLength charParse matches ..0 run data modify storage minecraft:messages message set value "Input array needs 1 or more items."
  execute if score inputLength charParse matches ..0 run function ttb:error_handling/raise_exception

# Proceed
execute if score doException Exception matches 0 run function ttb:fonts/get_font_info