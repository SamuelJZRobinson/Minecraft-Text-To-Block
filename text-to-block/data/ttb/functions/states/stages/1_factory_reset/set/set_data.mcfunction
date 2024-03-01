# Notes
  # Order corresponds to function ttb:fonts/char_id_guide

# Clear Charset
data remove storage minecraft:stamp charset

# Set Subsets
data modify storage minecraft:temp charset.controlChars set value ['\\n','\\t']
data modify storage minecraft:temp charset.whitespace set value [' ']
data modify storage minecraft:temp charset.symbols set value ['!','"','#','$','%','&',"'",'(',')','\\*','+',',','-','.','/',':',';','<','=','>','?','\\@','[','\\',']','^','_','`','{','|','}','~']
data modify storage minecraft:temp charset.numbers set value ['0','1','2','3','4','5','6','7','8','9']
data modify storage minecraft:temp charset.uppercases set value ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
data modify storage minecraft:temp charset.lowercases set value ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

# Combine Subsets
data modify storage minecraft:stamp charset append from storage minecraft:temp charset.controlChars[]
data modify storage minecraft:stamp charset append from storage minecraft:temp charset.whitespace[]
data modify storage minecraft:stamp charset append from storage minecraft:temp charset.symbols[]
data modify storage minecraft:stamp charset append from storage minecraft:temp charset.numbers[]
data modify storage minecraft:stamp charset append from storage minecraft:temp charset.uppercases[]
data modify storage minecraft:stamp charset append from storage minecraft:temp charset.lowercases[]

# Count Charset Length
execute store result score MAX_CHAR_ID StampCharParse run data get storage minecraft:stamp charset

# Clear Temp
data remove storage minecraft:temp charset