# key use
execute as @a[predicate=keylock:usage] at @s anchored eyes run function keylock:detect

# container checks
execute if score #enable_containers keylock matches 1 as @e[tag=keylock_container] run function keylock:container/run

# door checks
execute if score #enable_doors keylock matches 1 as @e[tag=keylock_door] at @s run function keylock:door/run
execute if score #enable_doors keylock matches 1 if predicate keylock:auto_doors_check run function keylock:door/auto_door/run

# trapgate checks
execute if score #enable_trapgate keylock matches 1 as @e[tag=keylock_trapgate] at @s run function keylock:trapgate/run
execute if score #enable_trapgate keylock matches 1 if predicate keylock:auto_doors_check run function keylock:trapgate/auto_door/run

# repair
execute if score #damage keylock matches 1 as @e[predicate=keylock:repair] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot"}}] run function keylock:durability/detect

# uuid
execute as @a unless score @s keylock matches 0.. run function keylock:uuid

# open settings menu
execute as @a[scores={keylock_settings=1..}] run function keylock:settings

# reset use scoreboard
execute as @a[scores={keylock_use=1..}] run scoreboard players reset @s keylock_use

# reset execute code (!!must always be last executed command!!)
execute if score #execute_code keylock matches 0.. run scoreboard players reset #execute_code keylock