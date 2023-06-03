#containers  if block ~ ~ ~ #keylock:containers
execute as @e[tag=keylock_cloud,tag=!keylock_unlocked,tag=!keylock_isdisplay] at @s if score @p[distance=..5] keylock = @s keylock run function keylock:container/unlock
execute as @e[tag=keylock_isdisplay,tag=!keylock_unlocked] at @s if score @p[distance=..5] keylock = @s keylock run function keylock:container/unlock_display

execute as @e[tag=keylock_unlocked] at @s unless entity @a[distance=..5] run function keylock:container/lock

execute as @e[tag=keylock_unlocked,tag=!keylock_support_replaced] at @s unless block ~ ~ ~ #keylock:containers positioned ~ ~0.25 ~ run kill @e[tag=keylock_display,distance=..0.1]
execute as @e[tag=keylock_unlocked,tag=!keylock_support_replaced] at @s unless block ~ ~ ~ #keylock:containers run kill @s