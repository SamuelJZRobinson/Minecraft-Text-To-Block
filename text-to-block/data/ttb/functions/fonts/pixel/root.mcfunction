

# Declare Charsets
scoreboard players set doUppercase StampSettings 1
scoreboard players set doLowercase StampSettings 1
scoreboard players set doNumbers StampSettings 1
scoreboard players set doSymbols StampSettings 1

# Dimensions
scoreboard players set totalHeight StampFontInfo 7
scoreboard players set avgWidth StampFontInfo 4
scoreboard players set xHeight StampFontInfo 2

# Char Width
execute if score doSymbols StampSettings matches 1 run function ttb:fonts/pixel/symbols
execute if score doNumbers StampSettings matches 1 run function ttb:fonts/pixel/numbers
execute if score doUppercase StampSettings matches 1 run function ttb:fonts/pixel/uppercase
execute if score doLowercase StampSettings matches 1 run function ttb:fonts/pixel/lowercase

# Confirm
function ttb:fonts/confirm_font