# EXCEPTION
scoreboard objectives add Exception dummy {"bold":true,"color":"white","text":"Exception"}
scoreboard players set doException Exception 0
scoreboard players set testsFailed Exception 0

# STATUS
scoreboard objectives add StampStatus dummy {"bold":true,"color":"white","text":"Stamp Status"}
scoreboard players set started StampStatus 0
scoreboard players set state StampStatus 1
scoreboard players set stampExists StampStatus 0
scoreboard players set yaw StampStatus 180
scoreboard players set xPosInit StampStatus 0
scoreboard players set yPosInit StampStatus 0
scoreboard players set zPosInit StampStatus 0
scoreboard players set lineCount StampStatus 0
scoreboard players set lineTravelLength StampStatus 0
scoreboard players set NEGATIVE_FLIP StampStatus -1

# SETTINGS
scoreboard objectives add StampSettings dummy {"bold":true,"color":"white","text":"Stamp Settings"}
scoreboard players set lineDistanceLimit StampSettings 128
scoreboard players set checkCollisions StampSettings 1
scoreboard players set CHAR_SPACING StampSettings 1
scoreboard players set textAlign StampSettings 2

# FONT INFO
scoreboard objectives add StampFontInfo dummy {"bold":true,"color":"white","text":"Stamp Font Info"}
scoreboard players set avgWidth StampFontInfo 0
scoreboard players set totalHeight StampFontInfo 0
scoreboard players set xHeight StampFontInfo 0
scoreboard players set fontExists StampFontInfo 0
scoreboard players set charsetsEnabled StampFontInfo 0
# Declare Subsets
scoreboard players set doSymbols StampFontInfo 0
scoreboard players set doNumbers StampFontInfo 0
scoreboard players set doUppercases StampFontInfo 0
scoreboard players set doLowercases StampFontInfo 0

# CHARPARSE
scoreboard objectives add StampCharParse dummy {"bold":true,"color":"white","text":"Stamp Char Parse"}
# scoreboard players set bool StampCharParse 0
scoreboard players set MAX_CHAR_ID StampCharParse 0
scoreboard players set charID StampCharParse 0
scoreboard players set inputLength StampCharParse 0
scoreboard players set noCharMatch StampCharParse 1
### scoreboard players set isCharsetBlank StampCharParse 0
scoreboard players set charWidth StampCharParse 0

# FONT DRAW
scoreboard objectives add fontDraw dummy {"bold":true,"color":"white","text":"Font Draw"}
  # Font
  scoreboard players set charsetBlank fontDraw 1
  scoreboard players set fontID fontDraw -1
  scoreboard players set gotFont fontDraw 1