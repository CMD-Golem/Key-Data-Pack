# as player who opened a door at @s
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:doors align xyz positioned ~0.5 ~ ~0.5 run function keylock:door/open/prepare

execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:non_solid run function keylock:door/open/detect