scoreboard players operation @e[tag=keylock_container,distance=..0.1] keylock_count = @s keylock

execute if score @s keylock = @e[tag=keylock_container,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 30
execute unless score #execute_code keylock matches 30 if items entity @s weapon.mainhand *[minecraft:custom_data~{keylock_admin:{}}] run scoreboard players set #execute_code keylock 30
execute unless score #execute_code keylock matches 30 if score #key_name keylock matches 1 run function keylock:password_check

execute if score #execute_code keylock matches 20 run scoreboard players set #execute_code keylock 30

execute if score #execute_code keylock matches 30 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/check