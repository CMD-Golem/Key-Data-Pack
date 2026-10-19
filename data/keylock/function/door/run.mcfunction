# as keylock_door
# remove lock when support block is removed or piston moves door
execute if predicate keylock:remove_door_lock run kill @s
# repair door when needed
execute if predicate keylock:repair_doors run function keylock:door/replace_broken with entity @s data.block