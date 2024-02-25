

# Declare Charsets
scoreboard players set hasUppercase fontInfo 1
scoreboard players set hasLowercase fontInfo 1
scoreboard players set hasNumbers fontInfo 1
scoreboard players set hasSymbols fontInfo 1

# Dimensions
scoreboard players set capHeight fontInfo 5
scoreboard players set avgCharWidth fontInfo 4
scoreboard players set descenderHeight fontInfo 2

# Char Width
scoreboard players set whitespace fontOtherWidth 1
execute if score hasUppercase fontInfo matches 1 run function ttb:fonts/pixel/uppercase
execute if score hasLowercase fontInfo matches 1 run function ttb:fonts/pixel/lowercase
execute if score hasNumbers fontInfo matches 1 run function ttb:fonts/pixel/numbers
execute if score hasSymbols fontInfo matches 1 run function ttb:fonts/pixel/symbols

# Confirm
function ttb:fonts/confirm_font