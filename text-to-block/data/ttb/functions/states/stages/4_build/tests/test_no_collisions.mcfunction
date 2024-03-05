# Check Axis
  # Horizontal
  execute if score fontAxis StampSettings matches 0 as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp,limit=1] at @s positioned ^ ^ ^1 run function ttb:states/stages/4_build/tests/test_no_collisions_h with storage minecraft:stamp checkCollisions
  # Vertical
  execute if score fontAxis StampSettings matches 1 as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp,limit=1] at @s positioned ^ ^ ^1 run function ttb:states/stages/4_build/tests/test_no_collisions_v with storage minecraft:stamp checkCollisions

# Warning
execute if score isAir StampStatus matches 0 run function ttb:error_handling/raise_warning {message:"Cannot place, blocks in the way!"}