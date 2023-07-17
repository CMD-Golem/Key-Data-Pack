# remove lock when supprort block is removed
execute at @s if block ~ ~-1 ~ #keylock:air run kill @s
# replace door when broken
execute at @s unless block ~ ~ ~ #keylock:doors run function keylock:door/replace_broken