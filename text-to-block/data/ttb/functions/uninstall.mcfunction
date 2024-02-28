# Clear Controllers
clear @a written_book{display:{Name:'{"text":"Stamp Controller"}'},title:"Controller",author:"BlackeyeI"} 1

### Will need to fix this after
# Scoreboards
scoreboard objectives remove StampCharParse
scoreboard objectives remove Stamp
scoreboard objectives remove fontDraw
scoreboard objectives remove StampSettings
scoreboard objectives remove fontOtherWidth
scoreboard objectives remove fontUppercaseWidth
scoreboard objectives remove fontLowercaseWidth
scoreboard objectives remove fontNumberWidth
scoreboard objectives remove fontSymbolWidth

# Triggers
function ttb:reset/disable_triggers
scoreboard objectives remove alignStampText
scoreboard objectives remove killStamp
scoreboard objectives remove rotateStamp
scoreboard objectives remove spawnStamp
scoreboard objectives remove startStamp
scoreboard objectives remove teleportStamp
scoreboard objectives remove uninstallStamp

# Data Storage
function ttb:reset/clear_datastorage

# Armourstands
kill @e[type=minecraft:armor_stand,team=Stamp]

# Teams
team remove Stamp

# Status
tellraw @a {"text":"Text To Block uninstalled.","bold":true}

# Disable Datapack
datapack disable "file/text-to-block"