# Set Score
scoreboard players set charsetsEnabled StampFont 0

# Validate Input
execute if score doSymbols StampFont matches ..-1 run scoreboard players set doSymbols StampFont 0
execute if score doSymbols StampFont matches 2.. run scoreboard players set doSymbols StampFont 1
execute if score doNumbers StampFont matches ..-1 run scoreboard players set doNumbers StampFont 0
execute if score doNumbers StampFont matches 2.. run scoreboard players set doNumbers StampFont 1
execute if score doUppercases StampFont matches ..-1 run scoreboard players set doUppercases StampFont 0
execute if score doUppercases StampFont matches 2.. run scoreboard players set doUppercases StampFont 1
execute if score doLowercases StampFont matches ..-1 run scoreboard players set doLowercases StampFont 0
execute if score doLowercases StampFont matches 2.. run scoreboard players set doLowercases StampFont 1

# Count Disabled Subsets
execute if score doSymbols StampFont matches 1 run scoreboard players add charsetsEnabled StampFont 1
execute if score doNumbers StampFont matches 1 run scoreboard players add charsetsEnabled StampFont 1
execute if score doUppercases StampFont matches 1 run scoreboard players add charsetsEnabled StampFont 1
execute if score doLowercases StampFont matches 1 run scoreboard players add charsetsEnabled StampFont 1

# Warning
execute if score charsetsEnabled StampFont matches 0 run function ttb:error_handling/raise_warning {message:"Cannot start, all font subsets disabled!"}