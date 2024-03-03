tellraw @a "state 1"

# Setup Scores (Fresh Install)
execute unless data storage minecraft:stamp charset run function ttb:states/stages/1_factory_reset/set/scores/set_scores

# Run Tests
function ttb:states/stages/1_factory_reset/tests/manage_tests