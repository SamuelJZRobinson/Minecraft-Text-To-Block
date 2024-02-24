# Error Message
tellraw @a ["",{"text":"[Error] ","bold":true,"color":"red"},{"nbt":"message","storage":"messages","color":"red"}]

# Play Error Sound
function ttb:sounds/error

# End Loops
schedule clear ttb:fonts/get_font_info

# Stop Program
scoreboard players set doException charParse 1
schedule function ttb:messages/reset_exception 1s replace