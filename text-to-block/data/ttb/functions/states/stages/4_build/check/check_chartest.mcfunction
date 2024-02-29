# Get Next Test Char
$data modify storage minecraft:stamp charTest set from storage minecraft:stamp charset[$(charID)]
# Test Whether Input Char Matches Char Test
execute store success score noCharMatch StampCharParse run data modify storage minecraft:stamp charTest set from storage minecraft:stamp input[0]