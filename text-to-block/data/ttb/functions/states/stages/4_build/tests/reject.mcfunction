# Default End
execute if score inputLength StampFont matches 0 run function ttb:states/4_build/tests/reject_default

# Other
execute if score inputLength StampFont matches 1.. run tellraw @a [{"text":"Try Again","color":"dark_green","clickEvent":{"action":"run_command","value":"/execute if score testsFailed Exception matches 1 if score started StampStatus matches 1 if score state StampStatus matches 4 run function ttb:states/4_build/tests/try_again"}},{"text":"  "},{"text":"Reset","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score testsFailed Exception matches 1 if score started StampStatus matches 1 if score state StampStatus matches 4 run function ttb:states/4_build/tests/reject_default"}}]