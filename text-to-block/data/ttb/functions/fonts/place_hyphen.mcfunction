# Place Structure
setblock ~ ~ ~ structure_block{posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
data modify block ~ ~ ~ name set value "minecraft:fonts/pixel/mandatory/hyphen"

# Copy Original charId Width
scoreboard players operation charWidthCopy Stamp = charWidth Stamp
scoreboard players set charWidth Stamp 3

# Align And Power Structure
function ttb:fonts/set_structure
setblock ^ ^ ^1 minecraft:redstone_block destroy

# Replace Original charId Width
scoreboard players operation charWidth Stamp = charWidthCopy Stamp
scoreboard players reset charWidthCopy Stamp

# Proceed
execute as @e[type=minecraft:armor_stand,team=Stamp,limit=1] run function ttb:stamp/move/goto_newline