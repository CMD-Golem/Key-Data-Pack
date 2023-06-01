scoreboard players set #execute_code keylock 0

#unlock if score of container and player matches
execute if score @s keylock = @e[tag=keylock_cloud,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 20
#unlock with admin key
execute if entity @e[tag=keylock_cloud,distance=..0.1] if entity @s[nbt={SelectedItem:{tag:{keylock_admin:1b}}}] run scoreboard players set #execute_code keylock 20
#unlock if key name matches
execute if score #key_name keylock matches 1 if score #execute_code keylock matches 0..9 if entity @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/password_check

# unlocked container
execute if score #execute_code keylock matches 20 if score @s keylock_count matches 1.. run scoreboard players remove @s keylock_count 1
execute if score #execute_code keylock matches 20 run playsound minecraft:block.iron_door.open block @s ~ ~ ~ 10 0.5
execute if score #execute_code keylock matches 20 unless score #message keylock matches 1 run title @s actionbar {"text":"Container has been unlocked"}
execute if score #execute_code keylock matches 20 if score #message keylock matches 1 run tellraw @s {"text":"Container has been unlocked"}

execute if score #execute_code keylock matches 20 as @e[tag=keylock_cloud,distance=..0.1,limit=1] run function keylock:container/unlock_display

# not your container
execute if score #execute_code keylock matches 0 run playsound minecraft:block.chest.locked block @s ~ ~ ~ 10 1
execute if score #execute_code keylock matches 0 if score #message keylock matches 1 run tellraw @s ["",{"text":"Container is locked by "},{"selector":"@e[tag=keylock_cloud,distance=..0.1,limit=1]"}]
execute if score #execute_code keylock matches 0 unless score #message keylock matches 1 run title @s actionbar ["",{"text":"Container is locked by "},{"selector":"@e[tag=keylock_cloud,distance=..0.1,limit=1]"}]
