# Notes
  # When making a font copy the pixel folder and replace references with a custom name using CTRL + H.
  # By default each structure must save characters from the baseline to the cap height for correct placements.

# Reset Descend
scoreboard players set descend Stamp 0

# Place Structure Block
execute if score charID StampFont matches 3.. run 

# Place Character (Check For Newline?)
execute if score charID StampFont matches 2..10 run function ttb:fonts/pixel/call/group1
execute if score charID StampFont matches 11..20 run function ttb:fonts/pixel/call/group2
execute if score charID StampFont matches 21..30 run function ttb:fonts/pixel/call/group3
execute if score charID StampFont matches 31..40 run function ttb:fonts/pixel/call/group4
execute if score charID StampFont matches 41..50 run function ttb:fonts/pixel/call/group5
execute if score charID StampFont matches 51..60 run function ttb:fonts/pixel/call/group6
execute if score charID StampFont matches 61..70 run function ttb:fonts/pixel/call/group7
execute if score charID StampFont matches 71..80 run function ttb:fonts/pixel/call/group8
execute if score charID StampFont matches 81..90 run function ttb:fonts/pixel/call/group9
execute if score charID StampFont matches 91..100 run function ttb:fonts/pixel/call/group10

# Set Structure Block Details
execute if score charID StampFont matches 3.. run function ttb:fonts/set_structure

# Place Redstone
function ttb:stamp/build/place_redstone