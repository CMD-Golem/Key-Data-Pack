execute unless score #execute_code keylock matches 0.. if block ~ ~ ~ #keylock:containers run function keylock:container/check
execute unless score #execute_code keylock matches 0.. if entity @e[tag=keylock_container,distance=..0.1] run function keylock:container/check

execute unless score #execute_code keylock matches 0.. if block ~ ~ ~ #keylock:door run function keylock:door/check
execute unless score #execute_code keylock matches 0.. if entity @e[tag=keylock_door,distance=..0.1] run function keylock:door/check
