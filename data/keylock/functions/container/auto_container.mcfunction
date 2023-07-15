execute if score #execute_code keylock matches 0.. run scoreboard players reset #execute_code keylock

execute if entity @s[tag=!keylock_autounlocked] as @p[distance=..5] unless score @s keylock = @e[tag=keylock_container,distance=..0.1,limit=1] keylock_count run function keylock:container/unlock/auto_check

execute as @a[distance=5..6] if score @s keylock = @e[tag=keylock_container,distance=..0.1,limit=1] keylock_count run scoreboard players reset @e[tag=keylock_container,distance=..0.1,limit=1] keylock_count

execute if entity @s[tag=keylock_autounlocked] unless entity @a[distance=..5] run function keylock:container/lock/check