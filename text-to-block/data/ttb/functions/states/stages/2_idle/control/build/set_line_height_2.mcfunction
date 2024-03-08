# Set Score
execute if score state StampStatus matches 2 run scoreboard players set lineHeight StampSettings 3

# Warning
execute if score state StampStatus matches 3.. run function ttb:error_handling/raise_warning {message:"Cannot set line height, already started!"}