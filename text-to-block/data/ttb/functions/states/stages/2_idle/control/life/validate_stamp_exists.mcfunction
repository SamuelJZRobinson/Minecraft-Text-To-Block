# Goto Location
execute unless entity @e[type=minecraft:armor_stand,team=Stamp,tag=stamp] run function ttb:states/stages/2_idle/control/move/tp_goto

# Score Not Set But Entity Present
execute if score stampExists StampStatus matches 0 if entity @e[type=armor_stand,team=Stamp,tag=stamp] run scoreboard players set stampExists StampStatus 1
# Score Set But Entity Not Present
execute if score stampExists StampStatus matches 1 unless entity @e[type=armor_stand,team=Stamp,tag=stamp] run scoreboard players set stampExists StampStatus 0