scoreboard players reset #execute_code keylock

execute if entity @s[tag=!keylock_autounlocked] if score @p[distance=..5] keylock = @s keylock at @s run function keylock:container/unlock/check

execute if entity @s[tag=keylock_autounlocked] unless entity @a[distance=..5] at @s run function keylock:container/lock/check