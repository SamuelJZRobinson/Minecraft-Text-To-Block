# Default End
execute if score inputLength StampFont matches 0 run scoreboard players set state StampStatus 2
execute if score inputLength StampFont matches 0 run scoreboard players set started StampStatus 0
execute if score inputLength StampFont matches 0 run schedule function ttb:states/stages/manage_states 1t replace