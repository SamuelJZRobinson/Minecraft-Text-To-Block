# Warning
execute as @e[type=armor_stand,tag=stamp,team=Stamp] if predicate ttb:below_world run function ttb:utility/exceptions/raise_warning {message:"Cannot place, below world!"}