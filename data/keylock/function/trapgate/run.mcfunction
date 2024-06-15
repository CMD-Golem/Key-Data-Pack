# replace door when broken
execute unless block ~ ~ ~ #keylock:trapgate unless block ~ ~ ~ minecraft:moving_piston run function keylock:trapgate/replace_broken with entity @s data.block
# close redstone powered doors
execute if predicate keylock:get_type/powered run function keylock:trapgate/replace_broken with entity @s data.block