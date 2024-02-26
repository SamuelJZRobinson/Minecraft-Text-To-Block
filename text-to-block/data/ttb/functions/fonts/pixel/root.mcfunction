

# Declare Charsets
scoreboard players set doUppercase StampSettings 1
scoreboard players set doLowercase StampSettings 1
scoreboard players set doNumbers StampSettings 1
scoreboard players set doSymbols StampSettings 1

# Dimensions
scoreboard players set capHeight StampSettings 5
scoreboard players set avgCharWidth StampSettings 4
scoreboard players set descenderHeight StampSettings 2

# Char Width
scoreboard players set whitespace fontOtherWidth 1
execute if score doUppercase StampSettings matches 1 run function ttb:fonts/pixel/uppercase
execute if score doLowercase StampSettings matches 1 run function ttb:fonts/pixel/lowercase
execute if score doNumbers StampSettings matches 1 run function ttb:fonts/pixel/numbers
execute if score doSymbols StampSettings matches 1 run function ttb:fonts/pixel/symbols

# Confirm
function ttb:fonts/confirm_font