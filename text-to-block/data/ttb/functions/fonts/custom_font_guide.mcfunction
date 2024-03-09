# Notes
  # Possible characters: /function ttb:fonts/char_id_guide
  # Symbol labels: /function ttb:states/stages/4_build/place/char/set_char_symbols

# 1) Decide What Subsets To Build:
  # In function ttb:fonts/<font>/get_font set what character subsets you want to support including:
    # Symbols (e.g., !@#$).
    # Numbers (e.g., 0123).
    # Uppercases (e.g., ABCD).
    # Lowercases (e.g., abcd).
  # Disabled subsets are ignored and treated like an incompatible character.
  # At least one subset must be enabled for the stamp to work.

# 2) Save Character Schematics:
  # Structure blocks demand lowercase letters for file path names.
  # Save subset characters with structure blocks using the file path "minecraft:fonts/<font>/<axis>/<subset>/<char>"
    # Font: custom name.
    # Axis: h, v.
    # Subset: s, n, uc, lc.
    # Char: letter or explict label.

# 3) Flip Schematic Axis Measurements:
  # Unfortunately structure blocks cannot flip on the vertical axis so it's necessary to:
    # Swap axis measurements.
    # Manually adjust each file path axis (i.e., /h /v).
  # To save time flipping axis measurements:
    # Build structures facing south.
    # Place structure blocks in the bottom right corner of each character.
    # Flip structures with World Edit and simply change the file path.
    # Get the flip axis tool with /function ttb:utility/axis/give_flip_axis_tool
    # Stand on top of each structure block being changed.
      # South builds and the bottom right corner allow the flip axis tool to swap between axis measurements instantly.

# 4) Set Character Dimensions
  # Measurement guide signs: left of character schematics.
  # In /function ttb:fonts/pixel/get/get_dimensions set default dimensions:
    # charCapHeight is distance of the baseline to the top.
    # charDescenderHeight is the distance below the baseline to the bottom.
    # charWidth in this case is the average character width.
  # For all /function ttb:fonts/pixel/set/set_<subset>
    # Any character diffirent from the average character width must be overwritten.
    # Any character that moves down (i.e., g, p, q) must set the descend flag.