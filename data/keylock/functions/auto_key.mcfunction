#container
execute as @e[tag=keylock_right,scores={keylock_craft=180}] at @s positioned ~-0.5 ~ ~ run function keylock:container/auto_container
execute as @e[tag=keylock_right,scores={keylock_craft=270}] at @s positioned ~ ~ ~-0.5 run function keylock:container/auto_container
execute as @e[tag=keylock_right,scores={keylock_craft=0}] at @s positioned ~0.5 ~ ~ run function keylock:container/auto_container
execute as @e[tag=keylock_right,scores={keylock_craft=90}] at @s positioned ~ ~ ~0.5 run function keylock:container/auto_container
execute as @e[tag=keylock_single] at @s run function keylock:container/auto_container

# remove locking when block gets broken while unlocked
execute as @e[tag=keylock_autounlocked,tag=!keylock_replacedby_support,tag=!keylock_replace_support] at @s unless block ~ ~ ~ #keylock:lockable_blocks positioned ~ ~0.25 ~ run kill @e[tag=keylock_display,distance=..0.1]
execute as @e[tag=keylock_autounlocked,tag=!keylock_replacedby_support,tag=!keylock_replace_support] at @s unless block ~ ~ ~ #keylock:lockable_blocks run kill @s
