#autoopen double doors
execute if score #double_door keylock matches 1 positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:doors align xyz positioned ~0.5 ~ ~0.5 run function keylock:door/double/prepare

#close locked doors again
execute unless score #door_found keylock matches 1 positioned ^ ^ ^0.1 as @e[tag=keylock_door,distance=..2.5,limit=1,sort=nearest] at @s run function keylock:door/open/close

#raycast
execute unless score #door_found keylock matches 1 if entity @s[distance=..5.5] positioned ^ ^ ^0.1 if block ~ ~ ~ #keylock:non_solid run function keylock:door/open/detect