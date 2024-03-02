# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function ttb:states/stages/4_build/tests/test_input_not_empty
# execute if score checkCollisions StampSettings matches 1 if score testsFailed Exception matches 0 run function ttb:states/stages/4_build/tests/test_no_collisions

# Approve
execute if score testsFailed Exception matches 0 run function ttb:states/stages/4_build/tests/approve