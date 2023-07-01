# spawn entity when new locked chest
execute if score #execute_code keylock matches 10..11 run function keylock:container/lock/setup

# only store items for auto key
execute if score #execute_code keylock matches 12..13 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/store
#??execute if score #execute_code keylock matches 12..13 unless entity @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/setup

#replace chest with display
execute if score #container_type keylock matches 2 if score #execute_code keylock matches 11..12 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/summon_display
