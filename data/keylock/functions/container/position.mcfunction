#double container
execute if predicate keylock:get_type/right if predicate keylock:get_type/north positioned ~-1 ~ ~ run function keylock:container/action
execute if predicate keylock:get_type/right if predicate keylock:get_type/east positioned ~ ~ ~-1 run function keylock:container/action
execute if predicate keylock:get_type/right if predicate keylock:get_type/south positioned ~1 ~ ~ run function keylock:container/action
execute if predicate keylock:get_type/right if predicate keylock:get_type/west positioned ~ ~ ~1 run function keylock:container/action

execute if predicate keylock:get_type/left if predicate keylock:get_type/north positioned ~1 ~ ~ run function keylock:container/action
execute if predicate keylock:get_type/left if predicate keylock:get_type/east positioned ~ ~ ~1 run function keylock:container/action
execute if predicate keylock:get_type/left if predicate keylock:get_type/south positioned ~-1 ~ ~ run function keylock:container/action
execute if predicate keylock:get_type/left if predicate keylock:get_type/west positioned ~ ~ ~-1 run function keylock:container/action

function keylock:container/action

## message
# not your container
execute if score #execute_code keylock matches 0 run function keylock:container/fail

# max count of locked containers reached
execute if score #execute_code keylock matches 1 run playsound minecraft:block.chest.locked block @s ~ ~ ~ 10 1
execute if score #execute_code keylock matches 1 unless score #message keylock matches 1 run title @s actionbar {"text":"You have reached the maximum number of locked containers"}
execute if score #execute_code keylock matches 1 if score #message keylock matches 1 run tellraw @s {"text":"You have reached the maximum number of locked containers"}

# locked container
execute if score #execute_code keylock matches 10 run scoreboard players add @s keylock_count 1
execute if score #execute_code keylock matches 10 run playsound minecraft:block.iron_door.close block @s ~ ~ ~ 10 0.5
execute if score #execute_code keylock matches 10 unless score #message keylock matches 1 run title @s actionbar {"text":"Container has been locked"}
execute if score #execute_code keylock matches 10 if score #message keylock matches 1 run tellraw @s {"text":"Container has been locked"}
execute if score #execute_code keylock matches 10 unless score #damage keylock matches 1 unless entity @s[gamemode=creative] run function keylock:durability/durability 

# unlocked container
execute if score #execute_code keylock matches 20 if score @s keylock_count matches 1.. run scoreboard players remove @s keylock_count 1
execute if score #execute_code keylock matches 20 run playsound minecraft:block.iron_door.open block @s ~ ~ ~ 10 0.5
execute if score #execute_code keylock matches 20 unless score #message keylock matches 1 run title @s actionbar {"text":"Container has been unlocked"}
execute if score #execute_code keylock matches 20 if score #message keylock matches 1 run tellraw @s {"text":"Container has been unlocked"}
