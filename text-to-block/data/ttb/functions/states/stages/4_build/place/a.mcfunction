# function example:load
scoreboard objectives add item_loss dummy
scoreboard players set #max item_loss 5

# function example:death
## Run this function as player.
data modify storage example:data Inv set from entity @s Inventory
scoreboard players set #this item_loss 0

function example:death/item_loss
execute store result storage example:macro inv.lenght if data storage example:data Inv[]
function example:death/random with storage example:macro inv
function example:death/get_slot with storage example:macro inv
function example:death/clear_slot with storage example:macro inv
scoreboard players add #this item_loss 1
execute if score #this item_loss < #max item_loss run function example:death/item_loss

# function example:death/random
$execute store result storage example:macro inv.index int 1 run random value -$(lenght)..-1

# function example:death/get_slot
$execute store result storage example:macro inv.slot int 1 run data get storage example:data Inv[$(index)].Slot

# function example:death/clear_slot
$item replace entity @s container.$(slot) with air
$data modify storage example:data lost_items append from storage example:data Inv[{Slot:$(slot)}]
data remove storage example:data Inv[$(index)]