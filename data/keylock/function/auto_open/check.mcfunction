# as @a at @s
execute if block ~ ~ ~ #keylock:lockable_blocks run function keylock:auto_open/prepare
execute unless score #execute_code keylock matches 20.. positioned ^ ^ ^1 if block ~ ~ ~ #keylock:lockable_blocks run function keylock:auto_open/prepare
execute unless score #execute_code keylock matches 20.. positioned ^ ^ ^2 if block ~ ~ ~ #keylock:lockable_blocks run function keylock:auto_open/prepare