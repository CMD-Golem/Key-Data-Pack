# replace door when broken
execute unless block ~ ~ ~ #keylock:doors unless block ~ ~-1 ~ #keylock:air unless block ~ ~ ~ minecraft:moving_piston unless block ~ ~1 ~ minecraft:moving_piston run function keylock:door/replace_broken with entity @s data.block
# remove lock when support block is removed
execute if block ~ ~-1 ~ #keylock:air run kill @s
# remove lock when piston moves door
execute if block ~ ~1 ~ minecraft:moving_piston run kill @s
# close redstone powered doors
execute if predicate keylock:get_type/powered run function keylock:door/replace_broken with entity @s data.block