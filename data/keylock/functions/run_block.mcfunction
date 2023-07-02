execute unless score #execute_code keylock matches 0.. if block ~ ~ ~ #keylock:containers run function keylock:container/action
execute unless score #execute_code keylock matches 0.. if entity @e[tag=keylock_container,distance=..0.1] run function keylock:container/action

execute unless score #execute_code keylock matches 0.. if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/upper positioned ~ ~-1 ~ run function keylock:door/action
execute unless score #execute_code keylock matches 0.. if block ~ ~ ~ #keylock:doors unless predicate keylock:get_type/upper run function keylock:door/action