execute as @a at @s anchored eyes run function keylock:door/auto_door/check

execute as @e[tag=keylock_autodouble] at @s unless entity @p[distance=..2.5] run function keylock:door/auto_door/close