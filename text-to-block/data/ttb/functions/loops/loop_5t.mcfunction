# Show Particles
execute as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp] at @s positioned ^-0.5 ^0.1 ^0.5 run function ttb:utility/particles/manage_particles_stamp

# Swap Axis
execute as @a[scores={StampUseCarrotStick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{hToVAxis:1b}}}}] at @s if block ~ ~-1 ~ structure_block run function ttb:utility/axis/flip_axis
execute as @a run scoreboard players reset @s StampUseCarrotStick

# Loop
schedule function ttb:loops/loop_5t 5t replace