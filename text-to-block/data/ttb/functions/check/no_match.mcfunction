# Notes
  # charID equals n-1 of charsetLength measured only with <.
  # Do not set bool to 0 here as the script will execute both paths.
  # Symbols may keep growing so test for greater than n charID.
  # Scheduling ttb:check/no_match_incompatible prevents unwanted script repeats.

# Remove First charsettest Array Character
data remove storage minecraft:charsetunique charsettest[0]

# Increment charID
scoreboard players add charID StampCharParse 1
# A-Z
execute if score doUppercase StampSettings matches 0 if score charID StampCharParse matches 3..28 run say @p "skip set1"
execute if score doUppercase StampSettings matches 0 if score charID StampCharParse matches 3..28 run scoreboard players set charID StampCharParse 29
# a-z
execute if score doLowercase StampSettings matches 0 if score charID StampCharParse matches 29..54 run say @p "skip set2"
execute if score doLowercase StampSettings matches 0 if score charID StampCharParse matches 29..54 run scoreboard players set charID StampCharParse 55
# 0-9
execute if score doNumbers StampSettings matches 0 if score charID StampCharParse matches 55..64 run say @p "skip set3"
execute if score doNumbers StampSettings matches 0 if score charID StampCharParse matches 55..64 run scoreboard players set charID StampCharParse 65
# !-~
execute if score doSymbols StampSettings matches 0 if score charID StampCharParse matches 65.. run say @p "skip set4"
execute if score doSymbols StampSettings matches 0 if score charID StampCharParse matches 65.. run scoreboard players operation charID StampCharParse = maxCharsetID StampCharParse

# Loop
execute if score charID StampCharParse < maxCharsetID StampCharParse run function ttb:check/test_char

# Incompatible Char
execute if score charID StampCharParse = maxCharsetID StampCharParse run schedule function ttb:check/no_match_incompatible 1t replace