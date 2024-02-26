# Already Exists
execute if score stampExists StampStatus matches 1 run data modify storage minecraft:messages message set value "Cannot spawn, stamp already exists!"
execute if score stampExists StampStatus matches 1 run function ttb:error_handling/raise_warning

# Spawn
execute if score stampExists StampStatus matches 0 at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Team:"Stamp",NoGravity:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Marker:1b,Tags:["stamp"],Pose:{LeftArm:[-40f,25f,0f],RightArm:[-40f,-25f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_enderman"}}]}
execute if score stampExists StampStatus matches 0 as @e[type=armor_stand,team=Stamp,tag=stamp,limit=1] store result entity @s Rotation[0] float 1 run scoreboard players get yaw StampStatus

# Get Coords
execute if score stampExists StampStatus matches 0 as @e[type=armor_stand,team=Stamp,limit=1] run function ttb:states/stages/2_idle/control/move/set_init_coords

# Set Score
execute if score stampExists StampStatus matches 0 run scoreboard players set stampExists StampStatus 1