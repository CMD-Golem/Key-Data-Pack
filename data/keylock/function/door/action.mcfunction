# as used key at door
scoreboard players set #execute_code keylock 0

#lock door
execute unless entity @e[tag=keylock_door,distance=..0.1] run scoreboard players set #execute_code keylock 10
#prevent locking if max locked doors reached
execute if score @s keylock_count >= #max_player keylock run scoreboard players set #execute_code keylock 1
execute if score #world keylock_count >= #max_world keylock run scoreboard players set #execute_code keylock 2
#unlock door
execute if score @s keylock = @e[tag=keylock_door,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 20
execute if score #execute_code keylock matches ..9 if entity @e[tag=keylock_door,distance=..0.1] if items entity @s weapon.mainhand *[minecraft:custom_data~{keylock_admin:1b}] run scoreboard players set #execute_code keylock 20
execute if score #key_name keylock matches 1 if score #execute_code keylock matches ..9 if entity @e[tag=keylock_door,distance=..0.1] run function keylock:password_check

#position
function keylock:door/check

execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/north positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/north run function keylock:door/check
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/east positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/east run function keylock:door/check
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/south positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/south run function keylock:door/check
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/west positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/west run function keylock:door/check

execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/north positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/north run function keylock:door/check
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/east positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/east run function keylock:door/check
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/south positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/south run function keylock:door/check
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/west positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/west run function keylock:door/check

## message
execute if score #execute_code keylock matches 10..13 run function keylock:door/lock/message
execute if score #execute_code keylock matches 20 run function keylock:door/unlock/message

execute if score #execute_code keylock matches ..9 run playsound minecraft:block.chest.locked block @s ~ ~ ~ 10 1

# not your door
execute if score #execute_code keylock matches 0 if score #message keylock matches 1 run tellraw @s [{text:"Door is locked by "},{selector:"@e[tag=keylock_door,distance=..0.1,limit=1]"}]
execute if score #execute_code keylock matches 0 unless score #message keylock matches 1 run title @s actionbar [{text:"Door is locked by "},{selector:"@e[tag=keylock_door,distance=..0.1,limit=1]"}]

# max count of locked door reached
execute if score #execute_code keylock matches 1..2 unless score #message keylock matches 1 run title @s actionbar {text:"You have reached the maximum number of locked blocks"}
execute if score #execute_code keylock matches 1..2 if score #message keylock matches 1 run tellraw @s {text:"You have reached the maximum number of locked blocks"}