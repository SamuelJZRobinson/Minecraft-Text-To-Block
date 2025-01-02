# Set Score
scoreboard players set testsFailed Exception 0

# Get Input
function ttb:states/2_idle/control/input/set/set_paste_input

# Test List
function ttb:states/3_start_request/tests/test_not_started
execute if score testsFailed Exception matches 0 run function ttb:states/3_start_request/tests/test_stamp_exists
execute if score testsFailed Exception matches 0 run function ttb:states/3_start_request/tests/test_font_exists with storage minecraft:stamp filePath
execute if score testsFailed Exception matches 0 run function ttb:states/3_start_request/tests/test_subsets_not_off
execute if score testsFailed Exception matches 0 run function ttb:states/3_start_request/tests/test_input_not_empty

# Outcome
execute if score testsFailed Exception matches 1 run schedule function ttb:states/3_start_request/tests/reject 1t replace
execute if score testsFailed Exception matches 0 run schedule function ttb:states/3_start_request/tests/approve 1t replace