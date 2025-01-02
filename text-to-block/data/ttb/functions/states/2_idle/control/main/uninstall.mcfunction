# Clear Controllers
clear @a written_book{stampControl:1b}

# Clear Teams
kill @e[type=minecraft:armor_stand,team=Stamp,tag=stamp]
team remove Stamp

# Clear Data
function ttb:states/1_factory_reset/clear/clear_data

# Clear Scores
scoreboard objectives remove Exception
scoreboard objectives remove StampStatus
scoreboard objectives remove StampSettings
scoreboard objectives remove StampFont
scoreboard objectives remove StampFlags
scoreboard objectives remove StampUseCarrotStick

# Status
tellraw @a [{"text":"Text To Block ","bold":true,"color": "gold"},{"text":"datapack uninstalled!","bold":false,"color": "white"}]

# Disable Datapack
datapack disable "file/text-to-block"