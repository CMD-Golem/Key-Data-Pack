# at 0 0 0
execute if score #execute_code keylock matches 0.. run scoreboard players reset #execute_code keylock

execute as @a at @s anchored eyes run function keylock:auto_open/check

execute unless score #execute_code keylock matches 10.. as @e[tag=keylock_autoopen] at @s unless entity @p[distance=..2.2] run function keylock:auto_open/close
