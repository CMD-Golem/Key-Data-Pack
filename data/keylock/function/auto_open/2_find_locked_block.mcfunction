# as @a at @s
execute if block ~ ~ ~ #keylock:lockable_blocks run function keylock:auto_open/3_align
execute positioned ^ ^ ^1 if block ~ ~ ~ #keylock:lockable_blocks run function keylock:auto_open/3_align
execute positioned ^ ^ ^2 if block ~ ~ ~ #keylock:lockable_blocks run function keylock:auto_open/3_align

# containers only
execute if score #auto_containers keylock matches 1 positioned ^ ^ ^3 if block ~ ~ ~ #keylock:containers run function keylock:auto_open/3_align
execute if score #auto_containers keylock matches 1 positioned ^ ^ ^4 if block ~ ~ ~ #keylock:containers run function keylock:auto_open/3_align
execute if score #auto_containers keylock matches 1 positioned ^ ^ ^5 if block ~ ~ ~ #keylock:containers run function keylock:auto_open/3_align