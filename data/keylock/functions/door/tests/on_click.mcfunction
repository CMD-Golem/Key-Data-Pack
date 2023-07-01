#say clicked thing
advancement revoke @s only keylock:click_door

execute as @e[tag=keylock_door,distance=..6] at @s run function keylock:door/test