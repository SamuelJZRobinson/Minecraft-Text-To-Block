execute if score state StampStatus matches 1 run function ttb:states/1_factory_reset/init_state
execute if score state StampStatus matches 2 run function ttb:states/2_idle/init_state
execute if score state StampStatus matches 3 run function ttb:states/3_start_request/init_state
execute if score state StampStatus matches 4 run function ttb:states/4_build/init_state