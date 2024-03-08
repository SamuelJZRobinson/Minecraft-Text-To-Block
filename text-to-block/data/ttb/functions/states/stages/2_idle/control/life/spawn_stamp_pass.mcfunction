# Spawn
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Team:"Stamp",NoGravity:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Tags:["stamp"],Pose:{LeftArm:[-40f,25f,0f],RightArm:[-40f,-25f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_enderman"}}]}
scoreboard players set yaw StampStatus 180
execute as @e[type=armor_stand,team=Stamp,tag=stamp,limit=1] store result entity @s Rotation[0] float 1 run scoreboard players get yaw StampStatus

# Get Coords
execute as @e[type=armor_stand,team=Stamp,limit=1] run function ttb:utility/tp/set_init_coords

# Set Score
scoreboard players set stampExists StampStatus 1