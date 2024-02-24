# Declare Started
scoreboard players set isStarted charParse 1

# Disable Triggers
execute as @a run function ttb:reset/disable_triggers

# Set Font Values
scoreboard players set gotFont fontDraw 0
scoreboard players set charsetBlank fontDraw 1
scoreboard players set hasUppercase fontInfo 0
scoreboard players set hasLowercase fontInfo 0
scoreboard players set hasNumbers fontInfo 0
scoreboard players set hasSymbols fontInfo 0

# Get Font
execute if score fontID fontDraw matches 1 run function ttb:fonts/pixel/head

# Force Exception
execute if score gotFont fontDraw matches 0 run data modify storage minecraft:messages message set value "Misconfigured or non-existent font."
execute if score gotFont fontDraw matches 0 run function ttb:messages/raise_exception