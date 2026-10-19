# as player who opened a door
advancement revoke @s only keylock:click_trapgate

execute at @s anchored eyes run function keylock:trapgate/open/detect

execute as @e[tag=keylock_closed] run tag @s remove keylock_closed