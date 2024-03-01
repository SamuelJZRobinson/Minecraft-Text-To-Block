# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function ttb:states/stages/3_start_request/tests/test_not_started
execute if score testsFailed Exception matches 0 run function ttb:states/stages/3_start_request/tests/test_stamp_exists
execute if score testsFailed Exception matches 0 run function ttb:states/stages/3_start_request/tests/test_font_exists with storage minecraft:stamp filePath
execute if score testsFailed Exception matches 0 run function ttb:states/stages/3_start_request/tests/test_subsets_not_off
execute if score testsFailed Exception matches 0 run function ttb:states/stages/3_start_request/tests/test_input_not_blank

# Approve
execute if score testsFailed Exception matches 0 run function ttb:states/stages/3_start_request/tests/approve