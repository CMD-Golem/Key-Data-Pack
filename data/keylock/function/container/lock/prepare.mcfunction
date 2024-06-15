# store item
execute if score #execute_code keylock matches 12..13 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/store with entity @s data.Pos
execute unless entity @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/setup

#replace chest with display
execute if score #container_type keylock matches 2 if score #execute_code keylock matches 11..12 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/summon_display
