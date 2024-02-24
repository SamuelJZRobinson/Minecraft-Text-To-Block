# Notes
  # Some values will never change when set to avoid causing a nuisance.

# Char Parse
scoreboard players set bool charParse 0
scoreboard players set charID charParse 0
scoreboard players set doException charParse 0
scoreboard players set inputLength charParse 0
scoreboard players set isCharsetBlank charParse 0
scoreboard players set isStarted charParse 0
scoreboard players set maxCharsetID charParse 0

# Stamper
scoreboard objectives add stamper dummy {"bold":true,"color":"white","text":"Stamper"}
scoreboard players set charWidth stamper 0
scoreboard players set charWidthMod stamper 0
execute unless score direction stamper matches 0..3 run scoreboard players set direction stamper 0
execute unless score direction stamper matches 0..3 as @e[type=minecraft:armor_stand,team=stamper,limit=1] at @s run tp @s ~ ~ ~ -180 0
scoreboard players set descend stamper 0
scoreboard players set ignoreFirstMove stamper 0
scoreboard players set lineLeft stamper 0
scoreboard players set lineMoved stamper 0
scoreboard players set lineCount stamper 0
scoreboard players set MOVE_LIMIT stamper 80
scoreboard players set MULTIPLIER stamper 10
scoreboard players set newline stamper 0
execute unless entity @e[type=minecraft:armor_stand,team=stamper,limit=1] run scoreboard players set stamperExists stamper 0
scoreboard players set posLine stamper 0
scoreboard players set xPos stamper 0
scoreboard players set xPosInit stamper 0
scoreboard players set zPos stamper 0
scoreboard players set zPosInit stamper 0

# Font Draw
scoreboard objectives add fontDraw dummy {"bold":true,"color":"white","text":"Font Draw"}
  # Font
  execute unless score align fontDraw matches 1..2 run scoreboard players set align fontDraw 1
  scoreboard players set CHAR_SPACING fontDraw 1
  scoreboard players set charsetBlank fontDraw 1
  scoreboard players set fontID fontDraw -1
  scoreboard players set gotFont fontDraw 1
  scoreboard players set lineHeight fontDraw 1

# Font Info
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

# Font Widths
  # Other
  scoreboard objectives add fontOtherWidth dummy {"bold":true,"color":"white","text":"Font Other Width"}
  # Uppercase
  scoreboard objectives add fontUppercaseWidth dummy {"bold":true,"color":"white","text":"Font Uppercase Width Info"}
  scoreboard players set A fontUppercaseWidth 0
  scoreboard players set B fontUppercaseWidth 0
  scoreboard players set C fontUppercaseWidth 0
  scoreboard players set D fontUppercaseWidth 0
  scoreboard players set E fontUppercaseWidth 0
  scoreboard players set F fontUppercaseWidth 0
  scoreboard players set G fontUppercaseWidth 0
  scoreboard players set H fontUppercaseWidth 0
  scoreboard players set I fontUppercaseWidth 0
  scoreboard players set J fontUppercaseWidth 0
  scoreboard players set K fontUppercaseWidth 0
  scoreboard players set L fontUppercaseWidth 0
  scoreboard players set M fontUppercaseWidth 0
  scoreboard players set N fontUppercaseWidth 0
  scoreboard players set O fontUppercaseWidth 0
  scoreboard players set P fontUppercaseWidth 0
  scoreboard players set Q fontUppercaseWidth 0
  scoreboard players set R fontUppercaseWidth 0
  scoreboard players set S fontUppercaseWidth 0
  scoreboard players set T fontUppercaseWidth 0
  scoreboard players set U fontUppercaseWidth 0
  scoreboard players set V fontUppercaseWidth 0
  scoreboard players set W fontUppercaseWidth 0
  scoreboard players set X fontUppercaseWidth 0
  scoreboard players set Y fontUppercaseWidth 0
  scoreboard players set Z fontUppercaseWidth 0
  # Lowercase
  scoreboard objectives add fontLowercaseWidth dummy {"bold":true,"color":"white","text":"Font Lowercase Width"}
  scoreboard players set a fontLowercaseWidth 0
  scoreboard players set b fontLowercaseWidth 0
  scoreboard players set c fontLowercaseWidth 0
  scoreboard players set d fontLowercaseWidth 0
  scoreboard players set e fontLowercaseWidth 0
  scoreboard players set f fontLowercaseWidth 0
  scoreboard players set g fontLowercaseWidth 0
  scoreboard players set h fontLowercaseWidth 0
  scoreboard players set i fontLowercaseWidth 0
  scoreboard players set j fontLowercaseWidth 0
  scoreboard players set k fontLowercaseWidth 0
  scoreboard players set l fontLowercaseWidth 0
  scoreboard players set m fontLowercaseWidth 0
  scoreboard players set n fontLowercaseWidth 0
  scoreboard players set o fontLowercaseWidth 0
  scoreboard players set p fontLowercaseWidth 0
  scoreboard players set q fontLowercaseWidth 0
  scoreboard players set r fontLowercaseWidth 0
  scoreboard players set s fontLowercaseWidth 0
  scoreboard players set t fontLowercaseWidth 0
  scoreboard players set u fontLowercaseWidth 0
  scoreboard players set v fontLowercaseWidth 0
  scoreboard players set w fontLowercaseWidth 0
  scoreboard players set x fontLowercaseWidth 0
  scoreboard players set y fontLowercaseWidth 0
  scoreboard players set z fontLowercaseWidth 0
  # Numbers
  scoreboard objectives add fontNumberWidth dummy {"bold":true,"color":"white","text":"Font Number Width"}
  scoreboard players set 0 fontNumberWidth 0
  scoreboard players set 1 fontNumberWidth 0
  scoreboard players set 2 fontNumberWidth 0
  scoreboard players set 3 fontNumberWidth 0
  scoreboard players set 4 fontNumberWidth 0
  scoreboard players set 5 fontNumberWidth 0
  scoreboard players set 6 fontNumberWidth 0
  scoreboard players set 7 fontNumberWidth 0
  scoreboard players set 8 fontNumberWidth 0
  scoreboard players set 9 fontNumberWidth 0
  # Symbols
  scoreboard objectives add fontSymbolWidth dummy {"bold":true,"color":"white","text":"Font Symbol Width"}
  scoreboard players set ! fontSymbolWidth 0
  scoreboard players set " fontSymbolWidth 0
  scoreboard players set # fontSymbolWidth 0
  scoreboard players set $ fontSymbolWidth 0
  scoreboard players set % fontSymbolWidth 0
  scoreboard players set & fontSymbolWidth 0
  scoreboard players set ' fontSymbolWidth 0
  scoreboard players set ( fontSymbolWidth 0
  scoreboard players set ) fontSymbolWidth 0
  scoreboard players set * fontSymbolWidth 0
  scoreboard players set + fontSymbolWidth 0
  scoreboard players set , fontSymbolWidth 0
  scoreboard players set - fontSymbolWidth 0
  scoreboard players set . fontSymbolWidth 0
  scoreboard players set / fontSymbolWidth 0
  scoreboard players set : fontSymbolWidth 0
  scoreboard players set ; fontSymbolWidth 0
  scoreboard players set < fontSymbolWidth 0
  scoreboard players set = fontSymbolWidth 0
  scoreboard players set > fontSymbolWidth 0
  scoreboard players set ? fontSymbolWidth 0
  scoreboard players set \@ fontSymbolWidth 0
  scoreboard players set [ fontSymbolWidth 0
  scoreboard players set \\ fontSymbolWidth 0
  scoreboard players set ] fontSymbolWidth 0
  scoreboard players set ^ fontSymbolWidth 0
  scoreboard players set _ fontSymbolWidth 0
  scoreboard players set ` fontSymbolWidth 0
  scoreboard players set { fontSymbolWidth 0
  scoreboard players set | fontSymbolWidth 0
  scoreboard players set } fontSymbolWidth 0
  scoreboard players set ~ fontSymbolWidth 0

# Triggers
scoreboard objectives add alignStamperText trigger {"bold":true,"color":"white","text":"Align Stamper Text"}
scoreboard objectives add killStamper trigger {"bold":true,"color":"white","text":"Kill Stamper"}
scoreboard objectives add rotateStamper trigger {"bold":true,"color":"white","text":"Rotate Stamper"}
scoreboard objectives add startStamper trigger {"bold":true,"color":"white","text":"Start Stamper"}
scoreboard objectives add spawnStamper trigger {"bold":true,"color":"white","text":"Spawn Stamper"}
scoreboard objectives add teleportStamper trigger {"bold":true,"color":"white","text":"Teleport Stamper"}
scoreboard objectives add uninstallStamper trigger {"bold":true,"color":"white","text":"Uninstall Stamper"}