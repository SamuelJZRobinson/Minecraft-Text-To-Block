# Notes
  # maxCharsetID equals n+1 as a way to detect errors after testing all characters.
  # charWidth is validated by ttb:fonts/measurement/call/find_group.

# Error Checking
scoreboard players set gotFont fontDraw 1
execute if score doUppercase StampSettings matches 1 run scoreboard players set charsetBlank fontDraw 0
execute if score doLowercase StampSettings matches 1 run scoreboard players set charsetBlank fontDraw 0
execute if score doNumbers StampSettings matches 1 run scoreboard players set charsetBlank fontDraw 0
execute if score doSymbols StampSettings matches 1 run scoreboard players set charsetBlank fontDraw 0

# Raise Exception
execute if score charsetBlank fontDraw matches 1 run data modify storage minecraft:messages message set value "Font info file must use 1 or more charsets."
execute if score charsetBlank fontDraw matches 1 run function ttb:error_handling/raise_exception

# Caluclate Maaximum CharsetID
scoreboard players set maxCharsetID StampFontParse 2
execute if score doUppercase StampSettings matches 1 run scoreboard players set maxCharsetID StampFontParse 28
execute if score doLowercase StampSettings matches 1 run scoreboard players set maxCharsetID StampFontParse 54
execute if score doNumbers StampSettings matches 1 run scoreboard players set maxCharsetID StampFontParse 64
execute if score doSymbols StampSettings matches 1 run scoreboard players set maxCharsetID StampFontParse 96
scoreboard players add maxCharsetID StampFontParse 1

# Calculate Newline Height
scoreboard players operation newlineHeight StampSettings = capHeight StampSettings
scoreboard players operation newlineHeight StampSettings += descenderHeight StampSettings
scoreboard players operation newlineHeight StampSettings += lineHeight fontDraw

# Start Test Cycle
execute if score doException Exception matches 0 run function ttb:check/reset