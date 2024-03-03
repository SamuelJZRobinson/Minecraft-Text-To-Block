# Set Score
scoreboard players set charsetsEnabled StampFont 0

# Count Disabled Subsets
execute if score doSymbols StampFont matches 1 run scoreboard players add charsetsEnabled StampFont 1
execute if score doNumbers StampFont matches 1 run scoreboard players add charsetsEnabled StampFont 1
execute if score doUppercases StampFont matches 1 run scoreboard players add charsetsEnabled StampFont 1
execute if score doLowercases StampFont matches 1 run scoreboard players add charsetsEnabled StampFont 1

# Warning
execute if score charsetsEnabled StampFont matches 0 run function ttb:error_handling/raise_warning {message:"Cannot start, all font subsets disabled!"}