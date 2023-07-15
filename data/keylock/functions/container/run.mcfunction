# replace container when broken with block
execute unless score #container_type keylock matches 1..2 as @e[tag=keylock_container,tag=!keylock_replacedby_support,tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers unless entity @e[tag=keylock_falling,distance=..0.1] run function keylock:container/replace_broken
# replace container when broken with display
execute if score #container_type keylock matches 1 as @e[tag=keylock_container,tag=!keylock_replacedby_support,tag=!keylock_isdisplay,tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/summon_display
# replace support block for falling block
execute as @e[tag=keylock_replace_support] at @s if block ~ ~ ~ #keylock:containers run function keylock:container/replace_support
# run autounlock
execute if score #auto_container keylock matches 1 as @e[tag=keylock_container] at @s run function keylock:container/auto_container