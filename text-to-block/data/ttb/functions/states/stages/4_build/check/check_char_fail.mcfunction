# Increment
scoreboard players add charID StampFont 1

# Skip Subsets
  # Symbols
  execute if score doSymbols StampFont matches 0 if score charID StampFont matches 3..34 run tellraw @a "skip symbols"
  execute if score doSymbols StampFont matches 0 if score charID StampFont matches 3..34 run scoreboard players set charID StampFont 35
  # Numbers
  execute if score doNumbers StampFont matches 0 if score charID StampFont matches 35..44 run tellraw @a "skip numbers"
  execute if score doNumbers StampFont matches 0 if score charID StampFont matches 35..44 run scoreboard players set charID StampFont 45
  # Uppercases
  execute if score doUppercases StampFont matches 0 if score charID StampFont matches 45..70 run tellraw @a "skip uppercases"
  execute if score doUppercases StampFont matches 0 if score charID StampFont matches 45..70 run scoreboard players set charID StampFont 71
  # Lowercases
  execute if score doLowercases StampFont matches 0 if score charID StampFont matches 71..96 run tellraw @a "skip lowercases"
  execute if score doLowercases StampFont matches 0 if score charID StampFont matches 71..96 run scoreboard players operation charID StampFont = MAX_CHAR_ID StampFont

# Continue
function ttb:states/stages/4_build/check/check_char