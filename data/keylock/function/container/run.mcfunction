# as keylock_container at 0 0 0
# replace container when broken
execute if entity @s[tag=!keylock_isdisplay,tag=!keylock_autounlocked,tag=!keylock_unlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/replace/1_check_settings
# run autounlock
# execute if score #auto_containers keylock matches 1 at @s run function keylock:container/auto_container/run
# remove locking when (auto) unlocked container gets broken
execute if entity @s[tag=keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/replace/reset with entity @s data.Pos
execute if entity @s[tag=keylock_unlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/replace/reset with entity @s data.Pos