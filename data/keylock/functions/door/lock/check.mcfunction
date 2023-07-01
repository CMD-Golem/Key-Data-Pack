execute unless score #execute_code keylock matches 10 run scoreboard players set #execute_code keylock 13

function keylock:door/lock/prepare

#double door
execute if predicate keylock:get_type/door_right if predicate keylock:get_type/north positioned ~-1 ~ ~ run function keylock:door/lock/prepare
execute if predicate keylock:get_type/door_right if predicate keylock:get_type/east positioned ~ ~ ~-1 run function keylock:door/lock/prepare
execute if predicate keylock:get_type/door_right if predicate keylock:get_type/south positioned ~1 ~ ~ run function keylock:door/lock/prepare
execute if predicate keylock:get_type/door_right if predicate keylock:get_type/west positioned ~ ~ ~1 run function keylock:door/lock/prepare

execute if predicate keylock:get_type/door_left if predicate keylock:get_type/north positioned ~1 ~ ~ run function keylock:door/lock/prepare
execute if predicate keylock:get_type/door_left if predicate keylock:get_type/east positioned ~ ~ ~1 run function keylock:door/lock/prepare
execute if predicate keylock:get_type/door_left if predicate keylock:get_type/south positioned ~-1 ~ ~ run function keylock:door/lock/prepare
execute if predicate keylock:get_type/door_left if predicate keylock:get_type/west positioned ~ ~ ~-1 run function keylock:door/lock/prepare
