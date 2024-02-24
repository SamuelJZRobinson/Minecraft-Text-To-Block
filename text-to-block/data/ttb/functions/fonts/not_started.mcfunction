# Get Input
function ttb:input

# Keep Values In Range
execute if score lineHeight fontDraw matches ..0 run scoreboard players set lineHeight fontDraw 1
execute if score lineHeight fontDraw matches 6.. run scoreboard players set lineHeight fontDraw 5

# Check For Stamper
execute store result score stamperExists stamper if entity @e[type=minecraft:armor_stand,team=stamper,limit=1]

# Get Input Array Length
execute store result score inputLength charParse run data get storage minecraft:charparse input

# Raise Exceptions
  # No Stamper
  execute if score stamperExists stamper matches 0 run data modify storage minecraft:messages message set value "Must place the stamper."
  execute if score stamperExists stamper matches 0 run function ttb:messages/raise_exception
  # Blank Input
  execute if score inputLength charParse matches ..0 run data modify storage minecraft:messages message set value "Input array needs 1 or more items."
  execute if score inputLength charParse matches ..0 run function ttb:messages/raise_exception

# Proceed
execute if score doException charParse matches 0 run function ttb:fonts/get_font_info