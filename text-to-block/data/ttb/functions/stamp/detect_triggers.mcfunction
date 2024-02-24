# Enable Triggers
execute unless entity @s[scores={spawnStamper=0..}] run function ttb:load/enable_triggers

# Detect Triggers
execute if entity @s[scores={spawnStamper=1..}] run function ttb:stamp/build/summon_stamper
execute if entity @s[scores={killStamper=1..}] run function ttb:stamp/build/kill_stamper
execute if entity @s[scores={teleportStamper=1..}] run function ttb:stamp/move/teleport
execute if entity @s[scores={rotateStamper=1}] run function ttb:stamp/move/rotate_left
execute if entity @s[scores={rotateStamper=2..}] run function ttb:stamp/move/rotate_right
execute if entity @s[scores={alignStamperText=1}] run function ttb:stamp/build/align_text_left
execute if entity @s[scores={alignStamperText=2..}] run function ttb:stamp/build/align_text_right
execute if entity @s[scores={startStamper=1..}] run function ttb:fonts/validate_start
execute if entity @s[scores={uninstallStamper=1..}] run function ttb:uninstall