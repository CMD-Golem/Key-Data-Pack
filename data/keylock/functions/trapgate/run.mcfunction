# replace door when broken
execute as @e[tag=keylock_trapgate,tag=!keylock_replacedby_support] at @s unless block ~ ~ ~ #keylock:trapgate run function keylock:trapgate/replace_broken
# run autounlock and autoopend 
execute if predicate keylock:auto_doors_check run function keylock:trapgate/auto_door/run