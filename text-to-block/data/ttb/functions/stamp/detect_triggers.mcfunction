# # Enable Triggers
# execute unless entity @s[scores={spawnStamp=0..}] run function ttb:load/set_triggers

# # Detect Triggers
# execute if entity @s[scores={spawnStamp=1..}] run function ttb:stamp/build/summon_Stamp
# execute if entity @s[scores={killStamp=1..}] run function ttb:stamp/build/kill_Stamp
# execute if entity @s[scores={teleportStamp=1..}] run function ttb:stamp/move/teleport
# execute if entity @s[scores={rotateStamp=1}] run function ttb:stamp/move/rotate_left
# execute if entity @s[scores={rotateStamp=2..}] run function ttb:stamp/move/rotate_right
# execute if entity @s[scores={alignStampText=1}] run function ttb:stamp/build/align_text_left
# execute if entity @s[scores={alignStampText=2..}] run function ttb:stamp/build/align_text_right
# execute if entity @s[scores={startStamp=1..}] run function ttb:fonts/validate_start
# execute if entity @s[scores={uninstallStamp=1..}] run function ttb:uninstall