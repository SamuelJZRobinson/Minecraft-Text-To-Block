# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function ttb:states/4_build/tests/test_input_not_empty
execute if score testsFailed Exception matches 0 run function ttb:states/4_build/tests/test_not_below_world
execute if score testsFailed Exception matches 0 run function ttb:states/4_build/tests/test_not_force_stop
# Outcomes
execute if score testsFailed Exception matches 0 run schedule function ttb:states/4_build/tests/approve 1t replace
execute if score testsFailed Exception matches 1 run schedule function ttb:states/4_build/tests/reject 1t replace