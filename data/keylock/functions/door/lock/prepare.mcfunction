# spawn entity when new locked chest
execute if score #execute_code keylock matches 10 run function keylock:door/lock/setup

# locking for auto key
execute unless score #execute_code keylock matches 10 as @e[tag=keylock_door,distance=..0.1] run tag @s remove keylock_autounlocked
#??execute if score #execute_code keylock matches 13 unless entity @e[tag=keylock_door,distance=..0.1] run function keylock:door/lock/setup

# close door
execute if predicate keylock:get_type/open summon marker run function keylock:door/lock/close