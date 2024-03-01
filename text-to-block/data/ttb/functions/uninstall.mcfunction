# Clear Controllers
clear @a written_book{stampControl:1b}

# Scoreboards
scoreboard objectives remove StampCharParse
scoreboard objectives remove Stamp
scoreboard objectives remove fontDraw
scoreboard objectives remove StampSettings

# Data Storage
function ttb:states/stages/1_factory_reset/clear/clear_data

# Armourstands
kill @e[type=minecraft:armor_stand,team=Stamp]

# Teams
team remove Stamp

# Status
tellraw @a {"text":"Text To Block uninstalled.","bold":true}

# Disable Datapack
datapack disable "file/text-to-block"