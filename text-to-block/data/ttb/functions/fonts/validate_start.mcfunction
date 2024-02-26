# Reset Triggers
scoreboard players reset @a startStamp
scoreboard players enable @a startStamp

# Check If Started
execute if score isStarted StampFontParse matches 1 run function ttb:fonts/already_started
execute if score isStarted StampFontParse matches 0 run schedule function ttb:fonts/not_started 1t replace