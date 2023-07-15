# spawn entity when new locked chest
execute if score #execute_code keylock matches 10 run function keylock:door/lock/setup

# locking for auto key
execute unless score #execute_code keylock matches 10 as @e[tag=keylock_door,distance=..0.1] run tag @s remove keylock_autounlocked

# close door
execute if predicate keylock:get_type/open as @e[tag=keylock_door,distance=..0.1,limit=1] run tag @s add keylock_closedoor