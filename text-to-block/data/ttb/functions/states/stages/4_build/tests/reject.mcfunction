# Default End
execute if score inputLength StampFont matches 0 run scoreboard players set state StampStatus 2
execute if score inputLength StampFont matches 0 run scoreboard players set started StampStatus 0
execute if score inputLength StampFont matches 0 run scoreboard players set started StampStatus 0
execute if score inputLength StampFont matches 0 as @e[type=armor_stand,team=Stamp,limit=1] run function ttb:utility/tp/set_init_coords
execute if score inputLength StampFont matches 0 run schedule function ttb:states/stages/manage_states 1t replace