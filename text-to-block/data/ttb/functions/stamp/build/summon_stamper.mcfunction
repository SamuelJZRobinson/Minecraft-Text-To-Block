# Notes
  # Faces north by default.

# Spawn Stamper
execute at @s if score stamperExists stamper matches 0 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Team:"stamper",NoGravity:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Pose:{LeftArm:[-40f,25f,0f],RightArm:[-40f,-25f,0f]},DisabledSlots:4144959,Rotation:[-180F,0F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_enderman"}}],CustomName:'{"text":"Stamper"}'}
execute if score stamperExists stamper matches 0 run scoreboard players set direction stamper 0

# Raise Warning
execute if score stamperExists stamper matches 1 run data modify storage minecraft:messages message set value "Only 1 stamper allowed."
execute if score stamperExists stamper matches 1 run function ttb:messages/raise_warning

# Set Value
scoreboard players set stamperExists stamper 1

# Reset Triggers
scoreboard players reset @s spawnStamper
scoreboard players enable @s spawnStamper