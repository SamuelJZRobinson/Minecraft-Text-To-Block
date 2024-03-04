# Show Particles
execute as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp] at @s positioned ^-0.5 ^0.1 ^0.5 run function ttb:utility/particles/manage_particles_stamp

# Swap Axis
execute as @a[scores={UseCarrotStick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{hToVAxis:1b}}}] at @s if block ~ ~-1 ~ structure_block run function ttb:utility/axis/flip_axis
execute as @a run scoreboard players reset @s UseCarrotStick

# Loop
schedule function ttb:loops/idle/idle_loop_8t 8t replace