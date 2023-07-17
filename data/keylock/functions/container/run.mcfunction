# replace container when broken with block
execute unless score #container_type keylock matches 1..2 unless entity @e[tag=keylock_replace_support] if entity @s[tag=!keylock_replacedby_support,tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers unless entity @e[tag=keylock_falling,distance=..0.1] run function keylock:container/replace_broken
# replace container when broken with display
execute if score #container_type keylock matches 1 if entity @s[tag=!keylock_replacedby_support,tag=!keylock_isdisplay,tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/summon_display
# run autounlock
execute if score #auto_container keylock matches 1 at @s run function keylock:container/auto_container
# replace display with block
execute unless entity @e[tag=keylock_replace_support] if entity @s[tag=keylock_replacedisplay] at @s run function keylock:container/unlock/display
#remove locking when auto unlocked container gets broken
execute if entity @s[tag=keylock_autounlocked,tag=!keylock_replacedby_support,tag=!keylock_replace_support,tag=!keylock_replacedisplay] at @s unless block ~ ~ ~ #keylock:containers run kill @s
# set barrier as support for falling block
execute if entity @s[tag=keylock_replace_support] at @s unless block ~ ~-1 ~ minecraft:barrier run setblock ~ ~-1 ~ minecraft:barrier