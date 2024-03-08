# Note
  # Tests are called repeatedly for the start of each build cycle.

tellraw @a "state 4"

# Call Protocols
schedule function ttb:states/stages/4_build/tests/manage_tests 1t replace