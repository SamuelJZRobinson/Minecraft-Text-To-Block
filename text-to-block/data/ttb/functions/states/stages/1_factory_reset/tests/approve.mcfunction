# Clear Data
function ttb:states/stages/1_factory_reset/clear/clear_data

# Set Data
function ttb:states/stages/1_factory_reset/set/set_gamerules
function ttb:states/stages/1_factory_reset/set/set_teams
function ttb:states/stages/1_factory_reset/set/set_data
function ttb:states/stages/1_factory_reset/set/scores/set_scores

# Status
tellraw @a [{"text":"Text To Block ","bold":true,"color": "gold"},{"text":"datapack loaded!","bold":false,"color": "white"}]

# Set State
scoreboard players set state StampStatus 2
schedule function ttb:states/stages/manage_states 1t replace