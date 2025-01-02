# Force Stop
execute if score state StampStatus matches 3.. if score testsFailed Exception matches 0 run scoreboard players set forceStop StampFlags 1

# Warning
execute if score state StampStatus matches ..2 run function ttb:utility/exceptions/raise_warning {message:"Cannot force stop, not started!"}
execute if score state StampStatus matches 3.. if score testsFailed Exception matches 1 run function ttb:utility/exceptions/raise_warning {message:"Cannot force stop, error menu open!"}