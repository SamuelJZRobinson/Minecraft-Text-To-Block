# Notes
  # When making a font copy the pixel folder and replace references with a custom name using CTRL + H.
  # By default each structure must save characters from the baseline to the cap height for correct placements.

# Reset Descend
scoreboard players set descend stamper 0

# Place Structure Block
execute if score charID charParse matches 3.. run setblock ~ ~ ~ structure_block{posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace

# Place Character (Check For Newline?)
execute if score charID charParse matches 2..10 run function ttb:fonts/pixel/call/group1
execute if score charID charParse matches 11..20 run function ttb:fonts/pixel/call/group2
execute if score charID charParse matches 21..30 run function ttb:fonts/pixel/call/group3
execute if score charID charParse matches 31..40 run function ttb:fonts/pixel/call/group4
execute if score charID charParse matches 41..50 run function ttb:fonts/pixel/call/group5
execute if score charID charParse matches 51..60 run function ttb:fonts/pixel/call/group6
execute if score charID charParse matches 61..70 run function ttb:fonts/pixel/call/group7
execute if score charID charParse matches 71..80 run function ttb:fonts/pixel/call/group8
execute if score charID charParse matches 81..90 run function ttb:fonts/pixel/call/group9
execute if score charID charParse matches 91..100 run function ttb:fonts/pixel/call/group10

# Set Structure Block Details
execute if score charID charParse matches 3.. run function ttb:fonts/set_structure

# Place Redstone
function ttb:stamp/build/place_redstone