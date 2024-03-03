# Horizontal
execute if score fontAxis StampSettings matches 0 run
execute unless blocks ~ ~ ~-7 ~-10 ~ ~ ~ ~1 ~ masked
execute unless blocks ^ ^ ^-7 ^-10 ^ ^ ^ ^1 ^ masked


execute as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp,limit=1] at @s unless blocks ^ ^1 ^-7 ^-10 ^1 ^ ^ ^2 ^ masked
/execute store success score blocksFound StampStatus run execute as @e[type=minecraft:armor_stand,team=Stamp,tag=stamp,limit=1] at @s unless blocks ~ ~ ~ ^-10 ^ ^ ^ ^2 ^ masked
# Vertical
execute if score fontAxis StampSettings matches 1 run

# If align horizontal
  # If block area infront armour stand (^^^?) not air
    # set collision StampStatus 1
# If align vertical
  # If block area below armour stand (^^^?) not air
    # set collision StampStatus 1

# If collision StampStatus 1
  # Exception "Stamp stopped, collision imminent"
    # Could kill script or wait until manual approval to try again?

# Exception
execute if score stampExists StampStatus matches 1 run function ttb:error_handling/raise_warning {message:"Cannot reset, stamp exists!"}