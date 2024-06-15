execute positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:trapgate align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=keylock_trapgate,tag=!keylock_closed,distance=..0.1] run function keylock:trapgate/open/close

execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:non_solid run function keylock:trapgate/open/detect