advancement revoke @s only keylock:click_door
scoreboard players reset #door_found keylock

execute at @s anchored eyes if block ~ ~ ~ #keylock:doors run tag @s add keylock_in_door
execute at @s anchored eyes run function keylock:door/open/detect
tag @s remove keylock_in_door