# Show Particles
execute as @e[type=minecraft:armor_stand,team=Stamp] at @s positioned ^ ^ ^0.5 run function ttb:utility/particles/manage_particles_stamp

# Detect Triggers
# execute as @p[nbt={Inventory:[{id:"minecraft:written_book",tag:{display:{Name:'{"text":"Stamp Controller"}'},title:"Controller"}}]}] run function ttb:stamp/detect_triggers