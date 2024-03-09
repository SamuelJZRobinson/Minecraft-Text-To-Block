# Height
execute if score charCapHeight StampFont matches ..-1 run scoreboard players set charCapHeight StampFont 0
execute if score charCapHeight StampFont matches 129.. run scoreboard players set charCapHeight StampFont 128
execute if score charDescenderHeight StampFont matches ..-1 run scoreboard players set charDescenderHeight StampFont 0
execute if score charDescenderHeight StampFont > charCapHeight StampFont run scoreboard players operation charDescenderHeight StampFont = charCapHeight StampFont

# Width
execute if score charWidth StampFont matches ..-1 run scoreboard players set charWidth StampFont 0
execute if score charWidth StampFont matches 129.. run scoreboard players set charWidth StampFont 128