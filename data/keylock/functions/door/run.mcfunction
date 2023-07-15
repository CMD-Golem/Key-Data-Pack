# remove lock when supprort block is removed
execute as @e[tag=keylock_door] at @s if block ~ ~-1 ~ #keylock:air run kill @s
# replace door when broken
execute as @e[tag=keylock_door] at @s unless block ~ ~ ~ #keylock:doors run function keylock:door/replace_broken
# run autounlock and autoopend 
execute if predicate keylock:auto_doors_check run function keylock:door/auto_door/run