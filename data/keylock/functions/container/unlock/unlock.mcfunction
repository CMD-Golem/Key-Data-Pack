execute unless entity @s[tag=keylock_autounlocked] unless predicate keylock:items_in_container run function keylock:container/unlock/drop

data merge block ~ ~ ~ {Lock:""}
# data modify block ~ ~ ~ Items set from entity @s data.Items
data modify block ~ ~ ~ CustomName set from entity @s data.CustomName

$data modify block ~ ~ ~ Items set from storage keylock:item_safe storage[{x:$(x)d,y:$(y)d,z:$(z)d}].Items

#remove items from storage if no longer needed
$execute if score #execute_code keylock matches 20 if data storage keylock:item_safe temp.Items[0] run data remove storage keylock:item_safe storage[{x:$(x)d,y:$(y)d,z:$(z)d}]