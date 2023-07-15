#close locked trapdoors/ fence gates again
execute positioned ^ ^ ^0.1 at @e[tag=keylock_trapgate,distance=..2.5,limit=1,sort=nearest] run function keylock:trapgate/open/close

#raycast
execute if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:non_solid run function keylock:trapgate/open/detect