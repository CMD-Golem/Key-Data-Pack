advancement revoke @s only keylock:click_door
scoreboard players reset #door_found keylock

execute at @s anchored eyes run function keylock:door/open/detect

execute as @e[tag=keylock_closed] run tag @s remove keylock_closed