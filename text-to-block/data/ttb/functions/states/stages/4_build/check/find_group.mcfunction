# Notes
  # Do not modify anything in the measurements folder since it dynamically references values for any font.
  # This script centralizes measurement retrieval to avoid redundancy in all fonts.
  # It's impossible to access scores with custom named entities since they still use a UUID.
  # Hyphen Newline is not an input char, must loop normal flow, and will trigger charID.
  # Newline Char is an input char that needs removing, skips to place redstone, and won't trigger charId.

# Set Default
scoreboard players set charWidth Stamp 0
scoreboard players set newline Stamp 0
scoreboard players set ignoreFirstMove Stamp 0

# Place Character
execute if score charID StampCharParse matches 1..10 run function ttb:fonts/measurement/call/group1
execute if score charID StampCharParse matches 11..20 run function ttb:fonts/measurement/call/group2
execute if score charID StampCharParse matches 21..30 run function ttb:fonts/measurement/call/group3
execute if score charID StampCharParse matches 31..40 run function ttb:fonts/measurement/call/group4
execute if score charID StampCharParse matches 41..50 run function ttb:fonts/measurement/call/group5
execute if score charID StampCharParse matches 51..60 run function ttb:fonts/measurement/call/group6
execute if score charID StampCharParse matches 61..70 run function ttb:fonts/measurement/call/group7
execute if score charID StampCharParse matches 71..80 run function ttb:fonts/measurement/call/group8
execute if score charID StampCharParse matches 81..90 run function ttb:fonts/measurement/call/group9
execute if score charID StampCharParse matches 91..100 run function ttb:fonts/measurement/call/group10

# Keep charWidth In Range
execute if score charWidth Stamp matches ..0 run scoreboard players set charWidth Stamp 1

# Check If Hyphenation Is Needed
execute if score newline Stamp matches 0 run function ttb:fonts/measurement/check_hyphen

# Call Font Schematics
execute if score newline Stamp matches 0 run function ttb:fonts/measurement/get_font

# Perform Newline
  # Newline Char
  execute if score newline Stamp matches 2 as @e[type=minecraft:armor_stand,team=Stamp,limit=1] run function ttb:stamp/move/goto_newline
  # Hypenate
  execute if score newline Stamp matches 1 run function ttb:fonts/place_hyphen