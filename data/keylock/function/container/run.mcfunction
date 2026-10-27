# replace container when broken
execute if entity @s[tag=!keylock_isdisplay,tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/broken
# run autounlock
# execute if score #auto_containers keylock matches 1 at @s run function keylock:container/auto_container/run
#remove locking when auto unlocked container gets broken
execute if entity @s[tag=keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/auto_container/reset with entity @s data.Pos