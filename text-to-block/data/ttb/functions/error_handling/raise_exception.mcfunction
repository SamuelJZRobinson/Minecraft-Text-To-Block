# Alert
tellraw @a [{"text":"☠ ","color":"red"},{"nbt":"message","storage":"messages","color":"red"}]
function ttb:sounds/error

# Set Scores
scoreboard players set testsFailed Exception 1
scoreboard players set doException Exception 1
scoreboard players set started GameStatus 0
schedule function ttb:error_handling/reset_exception 5t replace