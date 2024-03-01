# Already Exists (Score Set)
execute if score stampExists StampStatus matches 1 run data modify storage minecraft:messages message set value "Cannot spawn, stamp already exists!"
execute if score stampExists StampStatus matches 1 run function ttb:error_handling/raise_warning

# Already Exists (Score Not Set But Entity Present)
execute if score stampExists StampStatus matches 0 if entity @e[type=armor_stand,team=Stamp,tag=stamp] run data modify storage minecraft:messages message set value "Cannot spawn, stamp already exists!"
execute if score stampExists StampStatus matches 0 run function ttb:error_handling/raise_warning

# Spawn
execute if score stampExists StampStatus matches 0 unless entity @e[type=armor_stand,team=Stamp,tag=stamp] run function ttb:states/stages/2_idle/control/life/spawn_stamp_create