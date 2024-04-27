scoreboard players set #execute_code keylock 0

#lock trapdoor/gate
execute unless entity @e[tag=keylock_trapgate,distance=..0.1] run scoreboard players set #execute_code keylock 10
#prevent locking if max locked blocks reached
execute if score @s keylock_count >= #max_player keylock run scoreboard players set #execute_code keylock 1
execute if score #world keylock_count >= #max_world keylock run scoreboard players set #execute_code keylock 2
#unlock trapdoor/gate
execute if score @s keylock = @e[tag=keylock_trapgate,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 20
execute if entity @e[tag=keylock_trapgate,distance=..0.1] if items entity @s weapon.mainhand *[minecraft:custom_data~{keylock_admin:{}}] run scoreboard players set #execute_code keylock 20
execute if score #key_name keylock matches 1 if score #execute_code keylock matches ..9 if entity @e[tag=keylock_trapgate,distance=..0.1] run function keylock:password_check

#position
execute if score #execute_code keylock matches 10 run function keylock:trapgate/lock/setup
execute if score #execute_code keylock matches 20 as @e[tag=keylock_trapgate,distance=..0.1] run kill @s

## message
execute if score #execute_code keylock matches 10..13 run function keylock:trapgate/lock/message
execute if score #execute_code keylock matches 20 run function keylock:trapgate/unlock/message

execute if score #execute_code keylock matches ..9 run playsound minecraft:block.chest.locked block @s ~ ~ ~ 10 1

# not your block
execute if score #execute_code keylock matches 0 if score #message keylock matches 1 run tellraw @s ["",{"text":"Block is locked by "},{"selector":"@e[tag=keylock_trapgate,distance=..0.1,limit=1]"}]
execute if score #execute_code keylock matches 0 unless score #message keylock matches 1 run title @s actionbar ["",{"text":"Block is locked by "},{"selector":"@e[tag=keylock_trapgate,distance=..0.1,limit=1]"}]

# max count of locked block reached
execute if score #execute_code keylock matches 1 unless score #message keylock matches 1 run title @s actionbar {"text":"You have reached the maximum number of locked blocks"}
execute if score #execute_code keylock matches 1 if score #message keylock matches 1 run tellraw @s {"text":"You have reached the maximum number of locked blocks"}