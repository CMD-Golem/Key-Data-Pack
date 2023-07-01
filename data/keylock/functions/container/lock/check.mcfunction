execute unless score #execute_code keylock matches 10 run scoreboard players set #execute_code keylock 13

function keylock:container/lock/prepare

execute if score #execute_code keylock matches 10 run scoreboard players set #execute_code keylock 11
execute if score #execute_code keylock matches 13 run scoreboard players set #execute_code keylock 12

#double container
execute if predicate keylock:get_type/container_right if predicate keylock:get_type/north positioned ~-1 ~ ~ run function keylock:container/lock/prepare
execute if predicate keylock:get_type/container_right if predicate keylock:get_type/east positioned ~ ~ ~-1 run function keylock:container/lock/prepare
execute if predicate keylock:get_type/container_right if predicate keylock:get_type/south positioned ~1 ~ ~ run function keylock:container/lock/prepare
execute if predicate keylock:get_type/container_right if predicate keylock:get_type/west positioned ~ ~ ~1 run function keylock:container/lock/prepare

execute if predicate keylock:get_type/container_left if predicate keylock:get_type/north positioned ~1 ~ ~ run function keylock:container/lock/prepare
execute if predicate keylock:get_type/container_left if predicate keylock:get_type/east positioned ~ ~ ~1 run function keylock:container/lock/prepare
execute if predicate keylock:get_type/container_left if predicate keylock:get_type/south positioned ~-1 ~ ~ run function keylock:container/lock/prepare
execute if predicate keylock:get_type/container_left if predicate keylock:get_type/west positioned ~ ~ ~-1 run function keylock:container/lock/prepare

#replace first chest with display
execute if score #container_type keylock matches 2 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/summon_display