execute if score #execute_code keylock matches 10 run function keylock:door/lock/setup
execute if score #execute_code keylock matches 20 as @e[tag=keylock_door,distance=..0.1] run kill @s