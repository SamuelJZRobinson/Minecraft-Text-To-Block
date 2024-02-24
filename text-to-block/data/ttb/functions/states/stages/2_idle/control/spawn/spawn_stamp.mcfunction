# Notes
  # Faces north by default.

# Spawn
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Team:"Stamp",NoGravity:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Pose:{LeftArm:[-40f,25f,0f],RightArm:[-40f,-25f,0f]},DisabledSlots:4144959,Rotation:[-180F,0F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_enderman"}}],CustomName:'{"text":"Stamp"}'}
scoreboard players set direction Stamp 0

# Get Coords
execute as @e[type=armor_stand,team=Stamp,limit=1] run function ttb:states/stages/2_idle/control/move/set_init_coords

# Set Score
scoreboard players set stampExists StampStatus 1