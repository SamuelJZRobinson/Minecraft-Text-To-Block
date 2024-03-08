# Set Scores
execute if score stampExists StampStatus matches 1 run scoreboard players add yaw StampStatus 90
execute if score stampExists StampStatus matches 1 if score yaw StampStatus matches 271.. run scoreboard players set yaw StampStatus 0

# Modify Attribute
execute if score stampExists StampStatus matches 1 as @e[type=armor_stand,team=Stamp,tag=stamp,limit=1] store result entity @s Rotation[0] float 1 run scoreboard players get yaw StampStatus

# Warning
execute if score stampExists StampStatus matches 0 run function ttb:error_handling/raise_warning {message:"Cannot rotate, need stamp!"}