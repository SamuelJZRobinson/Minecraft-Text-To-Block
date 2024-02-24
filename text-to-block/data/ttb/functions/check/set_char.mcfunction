# Notes
  # Got input array length from ttb:fonts/not_started

# End Program
execute if score inputLength charParse matches ..0 run function ttb:check/set_char_no_input

# Proceed
execute if score inputLength charParse matches 1.. run function ttb:check/set_char_has_input