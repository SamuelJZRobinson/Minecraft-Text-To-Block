# Set Score
execute if score state StampStatus matches 2 run scoreboard players set fontAxis StampSettings 1

# Warning
execute if score state StampStatus matches 3.. run function ttb:utility/exceptions/raise_warning {message:"Cannot set axis, already started!"}