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
scoreboard players set xPos StampStatus 0
scoreboard players set yPos StampStatus 0
scoreboard players set zPos StampStatus 0
scoreboard players set lineCount StampStatus 0
scoreboard players set lineTravelLength StampStatus 0

# SETTINGS
scoreboard objectives add StampSettings dummy {"bold":true,"color":"white","text":"Stamp Settings"}
scoreboard players set lineCharLimit StampSettings 128
scoreboard players set detectCollisions StampSettings 1
scoreboard players set CHAR_SPACING StampSettings 1
scoreboard players set textAlign StampSettings 2
scoreboard players set lineHeight StampSettings 1

# FONT INFO
scoreboard objectives add StampFontInfo dummy {"bold":true,"color":"white","text":"Stamp Font Info"}
scoreboard players set capHeight StampFontInfo 5
scoreboard players set avgCharWidth StampSettings 4
# Declare Subsets
scoreboard players set doSymbols StampFontInfo 0
scoreboard players set doNumbers StampFontInfo 0
scoreboard players set doUppercases StampFontInfo 0
scoreboard players set doLowercases StampFontInfo 0

# CHARPARSE
scoreboard objectives add StampFontParse dummy {"bold":true,"color":"white","text":"Stamp Char Parse"}
# scoreboard players set bool StampFontParse 0
scoreboard players set charID StampFontParse 0
scoreboard players set inputLength StampFontParse 0
### scoreboard players set isCharsetBlank StampFontParse 0
scoreboard players set maxCharsetID StampFontParse 0
scoreboard players set charWidth StampFontParse 0

# Stamp
# scoreboard objectives add Stamp dummy {"bold":true,"color":"white","text":"Stamp"}
# scoreboard players set charWidthMod Stamp 0
# execute unless score direction Stamp matches 0..3 run scoreboard players set direction Stamp 0
# execute unless score direction Stamp matches 0..3 as @e[type=minecraft:armor_stand,team=Stamp,limit=1] at @s run tp @s ~ ~ ~ -180 0
# scoreboard players set descend Stamp 0
# scoreboard players set ignoreFirstMove Stamp 0
# scoreboard players set lineLeft Stamp 0
# scoreboard players set lineMoved Stamp 0
# scoreboard players set lineCount Stamp 0
# scoreboard players set MOVE_LIMIT Stamp 80
# scoreboard players set MULTIPLIER Stamp 10
# scoreboard players set newline Stamp 0
# execute unless entity @e[type=minecraft:armor_stand,team=Stamp,limit=1] run scoreboard players set stampExists StampStatus 0
# scoreboard players set posLine Stamp 0

# FONT DRAW
scoreboard objectives add fontDraw dummy {"bold":true,"color":"white","text":"Font Draw"}
  # Font
  scoreboard players set charsetBlank fontDraw 1
  scoreboard players set fontID fontDraw -1
  scoreboard players set gotFont fontDraw 1
  

# FONT INFO
scoreboard objectives add StampSettings dummy {"bold":true,"color":"white","text":"Font Info"}
  # Dimensions
  
  
  # scoreboard players set currentCharWidth StampSettings 0
  scoreboard players set descenderHeight StampSettings 1
  scoreboard players set newlineHeight StampSettings 5