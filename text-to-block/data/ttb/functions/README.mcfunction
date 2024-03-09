# Book Controller
  # Use the stamp control book to issue commands, obtain it by either:
    # 1) Clicking the give controller chat request when performing a factory reset.
    # 2) Typing /function ttb:states/stages/2_idle/control/give_controller
  # Stamp commands are temporarily disabled while the program runs successfully.
  # Stamp always clones characters 1 block in front of it and to the right.
  # The controller allows multiple users to interact with each copy.

# Commands
  # Main:
    # Start: clones characters given the input is not empty and they are compatible with the custom font.
    # Force Stop: halts the stamp process and opens the error chat menu to try again or restart.
    # Uninstall: remove any trace of the datapack including written books, scoreboards, and armour stands.
  # Stamp:
    # Spawn: place the stamp armour stand, only one is allowed at any time.
    # Kill: removes the stamp armour stand.
    # Call: make the stamp move to the user's position.
    # Goto: make the user move to the stamp's position.
    # Rotate: turns the stamp relative to the user's POV.
    # Chunk Move Limit: sets the maximum line move distance in chunks (n x 16 blocks), forcing a newline if the input is not empty.
  # Font:
    # Font Axis: determines whether to place the characters flat on the floor (horizontal) or erect in the air (vertical).
    # Line Height: sets the gap between each line after a newline occurs (equal to n+1).

# Program States
  # 1 Factory Reset: all data is reset to ensure the datapack works correctly.
    # /reload performs a factory reset when started StampStatus is 0 and there is no stamp.
  # 2 Idle: the stamp awaits commands and the input must be set.
  # 3 Start Request: the stamp ensures all data is set correctly before proceeding.
  # 4 Build: the stamp iterates through the input and clones valid characters supported by the custom font.

# Paste Input
  # Currently typing arrays are the only way to set input (JavaScript code is provided for convenience)
  # Set paste input here: /function ttb:states/stages/2_idle/control/input/set/set_paste_input
  # Guide for preparing paste input: /function ttb:states/stages/2_idle/control/input/set/paste_input_guide

# Custom Fonts
  # Guide for preparing custom fonts: /function ttb:fonts/custom_font_guide

# Current Limitations
  # Words are split when performing a newline.