# as used key at @s
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:lockable_blocks align xyz positioned ~0.5 ~ ~0.5 run function keylock:2_detect_block_type
execute if score #enable_containers keylock matches 1 if score #container_type keylock matches 1.. unless score #execute_code keylock matches 0.. positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=keylock_isdisplay,distance=..0.1] run function keylock:2_detect_block_type

execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:non_solid unless score #execute_code keylock matches 0.. run function keylock:1_find_focused_block