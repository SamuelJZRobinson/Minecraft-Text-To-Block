# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function ttb:states/stages/3_start_request/tests/test_font_exists

# Approve
execute if score testsFailed Exception matches 0 run function ttb:states/stages/1_factory_reset/tests/approve