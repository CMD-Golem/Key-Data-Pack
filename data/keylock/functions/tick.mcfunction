execute as @a[scores={keylock_use=1..},nbt={SelectedItem:{tag:{keylock:1b}}}] at @s anchored eyes run function keylock:detect


execute unless score #container_type keylock matches 1..2 as @e[tag=keylock_cloud,tag=!keylock_support_replaced] at @s unless block ~ ~ ~ #keylock:containers unless entity @e[tag=keylock_falling,distance=..0.1] run function keylock:container/replace
execute as @e[tag=keylock_support] at @s if block ~ ~ ~ #keylock:containers run function keylock:replace_support

#uuid and reset
execute as @a unless score @s keylock matches 0.. run function keylock:uuid
execute if score #execute_code keylock matches 0.. run scoreboard players reset #execute_code keylock
execute as @a[scores={keylock_use=1..}] run scoreboard players reset @s keylock_use

#repair
execute unless score #damage keylock matches 1 as @e[type=item,predicate=keylock:repair] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot"}}] run function keylock:durability/detect

#detect owner for autounlock
execute if score #auto_key keylock matches 1 as @e[tag=keylock_cloud,tag=!keylock_unlocked] at @s if score @p[distance=..5] keylock = @s keylock if block ~ ~ ~ #keylock:containers run function keylock:container/unlock
execute if score #auto_key keylock matches 1 as @e[tag=keylock_unlocked] at @s unless entity @a[distance=..5] run function keylock:container/lock
execute if score #auto_key keylock matches 1 as @e[tag=keylock_unlocked,tag=!keylock_support_replaced] at @s unless block ~ ~ ~ #keylock:containers run kill @s
