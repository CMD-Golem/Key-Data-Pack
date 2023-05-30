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

execute if entity @s[tag=keylock_locker] unless score #damage keylock matches 1 unless entity @s[gamemode=creative] run function keylock:durability/durability 

## message
# not your container
execute if score @s keylock_count < #max keylock unless entity @e[tag=keylock_new,distance=..0.1] unless score @s keylock = @e[tag=keylock_cloud,distance=..0.1,limit=1] keylock run function keylock:container/fail

# max count of locked containers reached
execute if score @s keylock_count >= #max keylock run playsound minecraft:block.chest.locked block @s ~ ~ ~ 10 1
execute if score @s keylock_count >= #max keylock unless score #message keylock matches 1 run title @s actionbar {"text":"You have reached the maximum number of locked containers"}
execute if score @s keylock_count >= #max keylock if score #message keylock matches 1 run tellraw @s {"text":"You have reached the maximum number of locked containers"}

# locked container
execute if entity @s[tag=keylock_locker] run scoreboard players add @s keylock_count 1
execute if entity @s[tag=keylock_locker] run playsound minecraft:block.iron_door.close block @s ~ ~ ~ 10 0.5
execute if entity @s[tag=keylock_locker] unless score #message keylock matches 1 run title @s actionbar {"text":"Container has been locked"}
execute if entity @s[tag=keylock_locker] if score #message keylock matches 1 run tellraw @s {"text":"Container has been locked"}
tag @a remove keylock_locker

# unlocked container
execute if entity @s[tag=keylock_unlocker] if score @s keylock_count matches 1.. run scoreboard players remove @s keylock_count 1
execute if entity @s[tag=keylock_unlocker] run playsound minecraft:block.iron_door.open block @s ~ ~ ~ 10 0.5
execute if entity @s[tag=keylock_unlocker] unless score #message keylock matches 1 run title @s actionbar {"text":"Container has been unlocked"}
execute if entity @s[tag=keylock_unlocker] if score #message keylock matches 1 run tellraw @s {"text":"Container has been unlocked"}
tag @a remove keylock_unlocker