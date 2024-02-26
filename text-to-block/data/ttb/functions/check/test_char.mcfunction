# Notes
  # Success (1) means no match and failure means match (0).
  # Text align left places backwards and tests for the last input char.
  # Text align right places forwards and tests for the first input char.
  # Scheduling ttb:check/match prevents unwanted script repeats.

# Copy First Char Backup For Testing
data modify storage minecraft:StampFontParse check set from storage minecraft:StampFontParse checkcopy

# Test For Matching Characters In checkcopy and charsettest
execute store success score bool StampFontParse run data modify storage minecraft:StampFontParse check set from storage charsetunique charsettest[0]

# Loop
execute if score bool StampFontParse matches 1 run function ttb:check/no_match
execute if score bool StampFontParse matches 0 run schedule function ttb:check/match 1t replace