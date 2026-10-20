# at 0 0 0
scoreboard players reset #execute_code keylock

execute as @a at @s anchored eyes run function keylock:auto_open/2_find_locked_block

execute unless score #execute_code keylock matches 10.. as @e[tag=keylock_autoopened] at @s unless entity @p[distance=..2.2] run function keylock:auto_open/lock
execute unless score #execute_code keylock matches 10.. as @e[tag=keylock_autounlocked,tag=!keylock_container] at @s unless entity @p[distance=..2.2] run function keylock:auto_open/lock
execute unless score #execute_code keylock matches 10.. as @e[tag=keylock_autounlocked,tag=keylock_container] at @s unless entity @p[distance=..5.2] run function keylock:container/lock/check

schedule function keylock:auto_open/1_run 5t replace