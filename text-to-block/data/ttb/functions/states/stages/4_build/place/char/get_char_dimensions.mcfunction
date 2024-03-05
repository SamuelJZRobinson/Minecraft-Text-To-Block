# Custom
$function ttb:fonts/$(font)/get/get_dimensions

# Calculate Total Height
scoreboard players operation charTotalHeight StampFont = charCapHeight StampFont
scoreboard players operation charTotalHeight StampFont += charDescenderHeight StampFont

# Calculate Check Collisions
  # Height (n-1)
  scoreboard players operation checkCollisionHeight StampFont = charTotalHeight StampFont
  scoreboard players remove checkCollisionHeight StampFont 1
  execute store result storage minecraft:stamp checkCollisions.height int 1 run scoreboard players get checkCollisionHeight StampFont
  # Width (150%)
  scoreboard players operation checkCollisionWidth StampFont = charCapHeight StampFont
  scoreboard players operation checkCollisionWidth StampFont /= HALF StampStatus
  scoreboard players operation checkCollisionWidth StampFont += charCapHeight StampFont
  execute store result storage minecraft:stamp checkCollisions.width int 1 run scoreboard players get checkCollisionWidth StampFont