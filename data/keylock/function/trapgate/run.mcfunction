# remove lock when piston moves door
execute if block ~ ~ ~ minecraft:moving_piston run kill @s
# repair trapgate when needed
execute if predicate keylock:repair_trapgate run function keylock:trapgate/replace_broken with entity @s data.block