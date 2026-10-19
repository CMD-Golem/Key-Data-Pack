# as @a at door
scoreboard players set #execute_code keylock 10

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=keylock_autogate,distance=..0.1] run function keylock:trapgate/auto_door/detect