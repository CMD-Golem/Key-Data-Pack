scoreboard players set #execute_code keylock 0

#lock container
execute unless entity @e[tag=keylock_container,distance=..0.1] unless entity @e[tag=keylock_autounlocked,distance=..0.1] run scoreboard players set #execute_code keylock 10
#prevent locking if max locked container reached
execute if score @s keylock_count >= #max_player keylock run scoreboard players set #execute_code keylock 1
execute if score #world keylock_count >= #max_world keylock run scoreboard players set #execute_code keylock 2
#unlock container
execute if score @s keylock = @e[tag=keylock_container,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 20
execute if score #execute_code keylock matches ..9 if entity @e[tag=keylock_container,distance=..0.1] if items entity @s weapon.mainhand *[minecraft:custom_data~{keylock_admin:1b}] run scoreboard players set #execute_code keylock 20
execute if score #key_name keylock matches 1 if score #execute_code keylock matches ..9 if entity @e[tag=keylock_container,distance=..0.1] run function keylock:password_check

#execute codes
execute if score #execute_code keylock matches 10 run function keylock:container/lock/check
execute if score #execute_code keylock matches 20 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/check


## message
execute if score #execute_code keylock matches 10..13 run function keylock:container/lock/message
execute if score #execute_code keylock matches 20 run function keylock:container/unlock/message

execute if score #execute_code keylock matches ..9 run playsound minecraft:block.chest.locked block @s ~ ~ ~ 10 1

# not your container
execute if score #execute_code keylock matches 0 if score #message keylock matches 1 run tellraw @s [{text:"Container is locked by "},{selector:"@e[tag=keylock_container,distance=..0.1,limit=1]"}]
execute if score #execute_code keylock matches 0 unless score #message keylock matches 1 run title @s actionbar [{text:"Container is locked by "},{selector:"@e[tag=keylock_container,distance=..0.1,limit=1]"}]

# max count of locked containers reached
execute if score #execute_code keylock matches 1 unless score #message keylock matches 1 run title @s actionbar {text:"You have reached the maximum number of locked blocks"}
execute if score #execute_code keylock matches 1 if score #message keylock matches 1 run tellraw @s {text:"You have reached the maximum number of locked blocks"}