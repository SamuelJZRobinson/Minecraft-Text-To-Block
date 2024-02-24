# Notes
  # charID equals n-1 of charsetLength measured only with <.
  # Do not set bool to 0 here as the script will execute both paths.
  # Symbols may keep growing so test for greater than n charID.
  # Scheduling ttb:check/no_match_incompatible prevents unwanted script repeats.

# Remove First charsettest Array Character
data remove storage minecraft:charsetunique charsettest[0]

# Increment charID
scoreboard players add charID charParse 1
# A-Z
execute if score hasUppercase fontInfo matches 0 if score charID charParse matches 3..28 run say @p "skip set1"
execute if score hasUppercase fontInfo matches 0 if score charID charParse matches 3..28 run scoreboard players set charID charParse 29
# a-z
execute if score hasLowercase fontInfo matches 0 if score charID charParse matches 29..54 run say @p "skip set2"
execute if score hasLowercase fontInfo matches 0 if score charID charParse matches 29..54 run scoreboard players set charID charParse 55
# 0-9
execute if score hasNumbers fontInfo matches 0 if score charID charParse matches 55..64 run say @p "skip set3"
execute if score hasNumbers fontInfo matches 0 if score charID charParse matches 55..64 run scoreboard players set charID charParse 65
# !-~
execute if score hasSymbols fontInfo matches 0 if score charID charParse matches 65.. run say @p "skip set4"
execute if score hasSymbols fontInfo matches 0 if score charID charParse matches 65.. run scoreboard players operation charID charParse = maxCharsetID charParse

# Loop
execute if score charID charParse < maxCharsetID charParse run function ttb:check/test_char

# Incompatible Char
execute if score charID charParse = maxCharsetID charParse run schedule function ttb:check/no_match_incompatible 1t replace