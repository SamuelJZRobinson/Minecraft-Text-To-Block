# Reset Triggers
scoreboard players reset @a startStamper
scoreboard players enable @a startStamper

# Check If Started
execute if score isStarted charParse matches 1 run function ttb:fonts/already_started
execute if score isStarted charParse matches 0 run schedule function ttb:fonts/not_started 1t replace