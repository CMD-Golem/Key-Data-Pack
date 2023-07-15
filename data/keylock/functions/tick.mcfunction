# key use
execute as @a[scores={keylock_use=1..},nbt={SelectedItem:{tag:{keylock:1b}}}] at @s anchored eyes run function keylock:detect

# container checks
execute if score #enable_containers keylock matches 1 run function keylock:container/run

# door checks
execute if score #enable_doors keylock matches 1 run function keylock:door/run

# trapgate checks
execute if score #enable_trapgate keylock matches 1 run function keylock:trapgate/run

# repair
execute if score #damage keylock matches 1 as @e[type=item,predicate=keylock:repair] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot"}}] run function keylock:durability/detect

# uuid
execute as @a unless score @s keylock matches 0.. run function keylock:uuid

# open settings menu
execute as @a[scores={keylock_settings=1..}] run function keylock:settings

# reset use scoreboard
execute as @a[scores={keylock_use=1..}] run scoreboard players reset @s keylock_use

# reset execute code (!!must always be last executed command!!)
execute if score #execute_code keylock matches 0.. run scoreboard players reset #execute_code keylock