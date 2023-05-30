scoreboard players set #execute_code keylock 0

#lock container
execute unless entity @e[tag=keylock_cloud,distance=..0.1] unless entity @e[tag=keylock_unlocked,distance=..0.1] run scoreboard players set #execute_code keylock 10
#prevent locking if max locked container reached
execute if score @s keylock_count >= #max keylock run scoreboard players set #execute_code keylock 1
#unlock if score of container and player matches
execute if score @s keylock = @e[tag=keylock_cloud,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 20
#unlock with admin key
execute if entity @e[tag=keylock_cloud,distance=..0.1] if entity @s[nbt={SelectedItem:{tag:{keylock_admin:1b}}}] run scoreboard players set #execute_code keylock 20
#unlock if key name matches
execute if score #key_name keylock matches 1 if score #execute_code keylock matches 0..9 if entity @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/password_check

#execute codes
execute if score #execute_code keylock matches 10 run function keylock:container/fulllock
execute if score #execute_code keylock matches 20 run function keylock:container/fullunlock
