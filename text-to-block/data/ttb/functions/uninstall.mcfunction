# Clear Controllers
clear @a written_book{display:{Name:'{"text":"Stamper Controller"}'},title:"Controller",author:"BlackeyeI"} 1

# Scoreboards
scoreboard objectives remove charParse
scoreboard objectives remove stamper
scoreboard objectives remove fontDraw
scoreboard objectives remove fontInfo
scoreboard objectives remove fontOtherWidth
scoreboard objectives remove fontUppercaseWidth
scoreboard objectives remove fontLowercaseWidth
scoreboard objectives remove fontNumberWidth
scoreboard objectives remove fontSymbolWidth

# Triggers
function ttb:reset/disable_triggers
scoreboard objectives remove alignStamperText
scoreboard objectives remove killStamper
scoreboard objectives remove rotateStamper
scoreboard objectives remove spawnStamper
scoreboard objectives remove startStamper
scoreboard objectives remove teleportStamper
scoreboard objectives remove uninstallStamper

# Data Storage
function ttb:reset/clear_datastorage

# Armourstands
kill @e[type=minecraft:armor_stand,team=stamper]

# Teams
team remove stamper

# Status
tellraw @a {"text":"Text To Block uninstalled.","bold":true}

# Disable Datapack
datapack disable "file/text-to-block"