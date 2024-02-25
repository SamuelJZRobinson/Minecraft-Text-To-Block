# EXCEPTION
scoreboard objectives add Exception dummy {"bold":true,"color":"white","text":"Exception"}
scoreboard players set doException Exception 0
scoreboard players set testsFailed Exception 0

# STAMP STATUS
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

# STAMP SETTINGS
scoreboard objectives add StampSettings dummy {"bold":true,"color":"white","text":"Stamp Settings"}
scoreboard players set textAlign stampSettings 1




# Char Parse
scoreboard players set bool charParse 0
scoreboard players set charID charParse 0
scoreboard players set inputLength charParse 0
scoreboard players set isCharsetBlank charParse 0
scoreboard players set isStarted charParse 0
scoreboard players set maxCharsetID charParse 0

# Stamp
scoreboard objectives add Stamp dummy {"bold":true,"color":"white","text":"Stamp"}
scoreboard players set charWidth Stamp 0
scoreboard players set charWidthMod Stamp 0
execute unless score direction Stamp matches 0..3 run scoreboard players set direction Stamp 0
execute unless score direction Stamp matches 0..3 as @e[type=minecraft:armor_stand,team=Stamp,limit=1] at @s run tp @s ~ ~ ~ -180 0
scoreboard players set descend Stamp 0
scoreboard players set ignoreFirstMove Stamp 0
scoreboard players set lineLeft Stamp 0
scoreboard players set lineMoved Stamp 0
scoreboard players set lineCount Stamp 0
scoreboard players set MOVE_LIMIT Stamp 80
scoreboard players set MULTIPLIER Stamp 10
scoreboard players set newline Stamp 0
execute unless entity @e[type=minecraft:armor_stand,team=Stamp,limit=1] run scoreboard players set stampExists StampStatus 0
scoreboard players set posLine Stamp 0

# FONT DRAW
scoreboard objectives add fontDraw dummy {"bold":true,"color":"white","text":"Font Draw"}
  # Font
  scoreboard players set CHAR_SPACING fontDraw 1
  scoreboard players set charsetBlank fontDraw 1
  scoreboard players set fontID fontDraw -1
  scoreboard players set gotFont fontDraw 1
  scoreboard players set lineHeight fontDraw 1

# FONT INFO
scoreboard objectives add fontInfo dummy {"bold":true,"color":"white","text":"Font Info"}
  # Dimensions
  scoreboard players set avgCharWidth fontInfo 4
  scoreboard players set capHeight fontInfo 5
  scoreboard players set currentCharWidth fontInfo 0
  scoreboard players set descenderHeight fontInfo 1
  scoreboard players set newlineHeight fontInfo 5
  # Declare Charsets
  scoreboard players set hasUppercase fontInfo 0
  scoreboard players set hasLowercase fontInfo 0
  scoreboard players set hasNumbers fontInfo 1
  scoreboard players set hasSymbols fontInfo 0