function keylock:door/check

execute if predicate keylock:get_type/closed if predicate keylock:get_type/door_right if predicate keylock:get_type/north positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/closed if predicate keylock:get_type/door_right if predicate keylock:get_type/east positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/closed if predicate keylock:get_type/door_right if predicate keylock:get_type/south positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/closed if predicate keylock:get_type/door_right if predicate keylock:get_type/west positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors run function keylock:door/check

execute if predicate keylock:get_type/closed if predicate keylock:get_type/door_left if predicate keylock:get_type/north positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/closed if predicate keylock:get_type/door_left if predicate keylock:get_type/east positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/closed if predicate keylock:get_type/door_left if predicate keylock:get_type/south positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/closed if predicate keylock:get_type/door_left if predicate keylock:get_type/west positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors run function keylock:door/check

execute if predicate keylock:get_type/open if predicate keylock:get_type/door_right if predicate keylock:get_type/north positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/open if predicate keylock:get_type/door_right if predicate keylock:get_type/east positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/open if predicate keylock:get_type/door_right if predicate keylock:get_type/south positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/open if predicate keylock:get_type/door_right if predicate keylock:get_type/west positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors run function keylock:door/check

execute if predicate keylock:get_type/open if predicate keylock:get_type/door_left if predicate keylock:get_type/north positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/open if predicate keylock:get_type/door_left if predicate keylock:get_type/east positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/open if predicate keylock:get_type/door_left if predicate keylock:get_type/south positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors run function keylock:door/check
execute if predicate keylock:get_type/open if predicate keylock:get_type/door_left if predicate keylock:get_type/west positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors run function keylock:door/check
