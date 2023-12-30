# replace container when broken with block
execute unless score #container_type keylock matches 1..2 if entity @s[tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/replace_broken with entity @s data.block
# replace container when broken with display
execute if score #container_type keylock matches 1 if entity @s[tag=!keylock_isdisplay,tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/summon_display
# run autounlock
execute if score #auto_containers keylock matches 1 at @s run function keylock:container/auto_container/run
#remove locking when auto unlocked container gets broken
execute if entity @s[tag=keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/auto_container/reset with entity @s data.Pos