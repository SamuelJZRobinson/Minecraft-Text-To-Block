# Start
execute if score started StampStatus matches 1 run function ttb:loops/active/active_loop_8t

# Loop
schedule function ttb:loops/idle/idle_loop_8t 8t replace