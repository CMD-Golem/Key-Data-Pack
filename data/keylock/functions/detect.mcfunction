execute positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:lockable_blocks align xyz positioned ~0.5 ~ ~0.5 run function keylock:run_block
execute if predicate keylock:type_settings_check unless score #execute_code keylock matches 0.. positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=keylock_isdisplay,distance=..0.1] run function keylock:run_block

execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:non_solid unless score #execute_code keylock matches 0.. run function keylock:detect