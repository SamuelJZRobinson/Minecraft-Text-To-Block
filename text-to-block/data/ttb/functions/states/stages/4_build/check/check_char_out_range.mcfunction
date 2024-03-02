# Warning
data modify storage minecraft:messages message set value "Incompatible char."
function ttb:error_handling/raise_warning

# Remove Input Char
data remove storage minecraft:stamp input[0]

# Restart Cycle
function ttb:states/stages/4_build/tests/manage_tests