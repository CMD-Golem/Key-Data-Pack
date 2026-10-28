# as @a at door
# autounlock doors, trapdoors and fence gates if not locked
execute unless entity @e[tag=keylock_locked,distance=..0.1] run scoreboard players set #execute_code keylock 19

# check player data for locked block
execute if score @s keylock = @e[tag=keylock_locked,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 21
execute unless score #execute_code keylock matches 20.. if items entity @s weapon.mainhand *[minecraft:custom_data~{keylock_admin:1b}] run scoreboard players set #execute_code keylock 22
execute if score #key_name keylock matches 1 unless score #execute_code keylock matches 20.. run function keylock:password_check

# open blocks
execute if score #auto_containers keylock matches 1 if score #execute_code keylock matches 20.. as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/4_find_double

execute if score #open_trapgate keylock matches 1 if score #execute_code keylock matches 19 summon marker run function keylock:trapgate/auto_door/toggle
execute if score #auto_trapgate keylock matches 1 if score #execute_code keylock matches 20.. as @e[tag=keylock_trapgate,distance=..0.1] run function keylock:trapgate/auto_door/toggle

execute if score #open_doors keylock matches 1 if score #execute_code keylock matches 19 run function keylock:door/auto_door/open
execute if score #auto_doors keylock matches 1 if score #execute_code keylock matches 20.. as @e[tag=keylock_door,distance=..0.1] run function keylock:door/auto_door/open

execute if score #execute_code keylock matches 20.. as @e[tag=keylock_locked,distance=..0.1] run tag @s add keylock_autounlocked