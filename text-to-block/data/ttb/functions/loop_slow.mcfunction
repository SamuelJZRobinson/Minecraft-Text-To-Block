# Display Particles
execute if score isStarted charParse matches 0 run function ttb:stamp/particles/mange_particles

# Detect Triggers
execute if score isStarted charParse matches 0 as @p[nbt={Inventory:[{id:"minecraft:written_book",tag:{display:{Name:'{"text":"Stamper Controller"}'},title:"Controller"}}]}] run function ttb:stamp/detect_triggers

# Loop
schedule function ttb:loop_slow 5t replace