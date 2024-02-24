# Notes
  # Created by BlackeyeI
  # Attribution-ShareAlike 4.0 International

# Set Start To Prevent Null Error
scoreboard objectives add charParse dummy {"bold":true,"color":"white","text":"Char Parse"}
execute unless score isStarted charParse matches 0..1 run scoreboard players set isStarted charParse 0

# Set Values
execute if score isStarted charParse matches 0 run function ttb:load/set_scores
execute if score isStarted charParse matches 0 run function ttb:load/set_data_storage
execute if score isStarted charParse matches 0 run function ttb:load/set_other

# Start Slow Loop
function ttb:loop_slow

# Status
tellraw @a {"text":"Text To Block V0.61 loaded","bold":true}