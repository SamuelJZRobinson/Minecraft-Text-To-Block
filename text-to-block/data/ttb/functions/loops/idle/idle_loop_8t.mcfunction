# Start
execute if score started StampStatus matches 1 run function ttb:loops/active/active_loop_8t

# Show Particles
execute if score started StampStatus matches 0 as @e[type=minecraft:armor_stand,team=Stamp] at @s positioned ^-0.5 ^0.1 ^0.5 run function ttb:utility/particles/manage_particles_stamp

# Loop
schedule function ttb:loops/idle/idle_loop_8t 8t replace