# autounlock door if not locked
execute unless entity @e[tag=keylock_trapgate,distance=..0.1] run scoreboard players set #execute_code keylock 21

# check player data for locked doors
execute if score @s keylock = @e[tag=keylock_trapgate,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 20
execute unless score #execute_code keylock matches 20.. if entity @s[nbt={SelectedItem:{tag:{keylock_admin:1b}}}] run scoreboard players set #execute_code keylock 20
execute if score #key_name keylock matches 1 unless score #execute_code keylock matches 20.. run function keylock:password_check

# open door
execute if score #open_trapgate keylock matches 1 if score #execute_code keylock matches 21 summon marker run function keylock:trapgate/auto_door/toggle
execute if score #auto_trapgate keylock matches 1 if score #execute_code keylock matches 20 summon marker run function keylock:trapgate/auto_door/toggle