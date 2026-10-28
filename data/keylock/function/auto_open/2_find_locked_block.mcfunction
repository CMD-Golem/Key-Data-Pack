# as @a at @s
execute if block ~ ~ ~ #keylock:auto_open run function keylock:auto_open/3_align
execute positioned ^ ^ ^1 if block ~ ~ ~ #keylock:auto_open run function keylock:auto_open/3_align
execute positioned ^ ^ ^2 if block ~ ~ ~ #keylock:auto_open run function keylock:auto_open/3_align

execute if score #enable_containers keylock matches 1 if score #auto_containers keylock matches 1.. run function keylock:auto_open/container