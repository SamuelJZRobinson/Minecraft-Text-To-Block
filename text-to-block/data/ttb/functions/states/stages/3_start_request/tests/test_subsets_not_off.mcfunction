# Set Score
scoreboard players set charsetsEnabled StampFontInfo 0

# Count Disabled Subsets
execute if score doSymbols StampFontInfo matches 1 run scoreboard players add charsetsEnabled StampFontInfo 1
execute if score doNumbers StampFontInfo matches 1 run scoreboard players add charsetsEnabled StampFontInfo 1
execute if score doUppercases StampFontInfo matches 1 run scoreboard players add charsetsEnabled StampFontInfo 1
execute if score doLowercases StampFontInfo matches 1 run scoreboard players add charsetsEnabled StampFontInfo 1

# Warning
execute if score charsetsEnabled StampFontInfo matches 0 run data modify storage minecraft:messages message set value "Cannot start, all font subsets disabled"
execute if score charsetsEnabled StampFontInfo matches 0 run function ttb:error_handling/raise_warning