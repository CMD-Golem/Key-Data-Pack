execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:containers align xyz positioned ~0.5 ~ ~0.5 run function keylock:container/position

execute if score #container_type keylock matches 1..2 unless score #execute_code keylock matches 0.. if entity @s[distance=..5.5] positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=keylock_isdisplay,distance=..0.1] run function keylock:container/check_display

execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:non_solid unless score #execute_code keylock matches 40 run function keylock:detect