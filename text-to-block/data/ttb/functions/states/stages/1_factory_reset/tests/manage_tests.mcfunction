# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function ttb:states/stages/1_factory_reset/tests/test_not_started
execute if score testsFailed Exception matches 0 run function ttb:states/stages/1_factory_reset/tests/test_no_stamp

# Approve
execute if score testsFailed Exception matches 0 run schedule function ttb:states/stages/1_factory_reset/tests/approve 1t replace