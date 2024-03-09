# Set Scores
scoreboard players set started StampStatus 0
scoreboard players set testsFailed Exception 0

# Set Flags
scoreboard players set forceStop StampFlags 0

# Goto Init
execute as @e[type=armor_stand,team=Stamp,limit=1] run function ttb:utility/tp/set_init_coords

# Set State
scoreboard players set state StampStatus 2
schedule function ttb:states/stages/manage_states 1t replace