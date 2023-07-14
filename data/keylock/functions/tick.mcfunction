## key use
execute as @a[scores={keylock_use=1..},nbt={SelectedItem:{tag:{keylock:1b}}}] at @s anchored eyes run function keylock:detect

## container checks
# replace container when broken with block
execute unless score #container_type keylock matches 1..2 as @e[tag=keylock_container,tag=!keylock_replacedby_support,tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers unless entity @e[tag=keylock_falling,distance=..0.1] run function keylock:container/replace_broken
# replace container when broken with display
execute if score #container_type keylock matches 1 as @e[tag=keylock_container,tag=!keylock_replacedby_support,tag=!keylock_isdisplay,tag=!keylock_autounlocked] at @s unless block ~ ~ ~ #keylock:containers run function keylock:container/summon_display
# replace support block for falling block
execute as @e[tag=keylock_replace_support] at @s if block ~ ~ ~ #keylock:containers run function keylock:container/replace_support
# run autounlock
execute if score #auto_container keylock matches 1 run function keylock:auto_container

## door checks
# remove lock when supprort block is removed
execute as @e[tag=keylock_door] at @s if block ~ ~-1 ~ #keylock:air run kill @s
# replace door when broken
execute as @e[tag=keylock_door] at @s unless block ~ ~ ~ #keylock:doors run function keylock:door/replace_broken
# run autounlock and autoopend 
execute if predicate keylock:auto_doors_check run function keylock:door/auto_door/run

## repair
execute unless score #damage keylock matches 1 as @e[type=item,predicate=keylock:repair] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot"}}] run function keylock:durability/detect

## uuid, reset, settings
execute as @a unless score @s keylock matches 0.. run function keylock:uuid
execute as @a[scores={keylock_use=1..}] run scoreboard players reset @s keylock_use

execute as @a[scores={keylock_settings=1..}] run function keylock:settings

# reset execute code (!!must always be last executed command!!)
execute if score #execute_code keylock matches 0.. run scoreboard players reset #execute_code keylock