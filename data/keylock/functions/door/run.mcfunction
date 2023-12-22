# replace door when broken
execute unless block ~ ~ ~ #keylock:doors unless block ~ ~-1 ~ #keylock:air run function keylock:door/replace_broken with entity @s data.block
# remove lock when support block is removed
execute if block ~ ~-1 ~ #keylock:air run kill @s