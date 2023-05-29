execute unless entity @s[tag=keylock_unlocked] unless predicate keylock:items_in_container run function keylock:container/drop

data merge block ~ ~ ~ {CustomName:"",Lock:""}
data modify block ~ ~ ~ Items set from entity @s data.Items
data modify block ~ ~ ~ CustomName set from entity @s data.CustomName

tag @s add keylock_unlocked