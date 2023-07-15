execute unless entity @e[tag=keylock_door,distance=..0.1] run scoreboard players set #execute_code keylock 21

execute if score @s keylock = @e[tag=keylock_door,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 20
execute unless score #execute_code keylock matches 20.. if entity @s[nbt={SelectedItem:{tag:{keylock_admin:1b}}}] run scoreboard players set #execute_code keylock 20
execute if score #key_name keylock matches 1 unless score #execute_code keylock matches 20.. run function keylock:password_check

execute if score #auto_open keylock matches 1 if score #execute_code keylock matches 21 run function keylock:door/auto_door/open
execute if score #auto_door keylock matches 1 if score #execute_code keylock matches 20 run function keylock:door/auto_door/open