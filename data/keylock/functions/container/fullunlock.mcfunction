tag @s add keylock_unlocker

execute as @e[tag=keylock_cloud,distance=..0.1,limit=1] run function keylock:container/unlock

kill @e[tag=keylock_cloud,distance=..0.1]