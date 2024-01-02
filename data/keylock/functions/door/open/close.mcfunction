execute as @e[tag=keylock_door,distance=..0.1] run function keylock:door/replace_broken with entity @s data.block
execute as @e[tag=keylock_door,distance=..0.1] run tag @s add keylock_closed

# not your door
execute if score #message keylock matches 1 run tellraw @s ["",{"text":"Door is locked by "},{"selector":"@e[tag=keylock_door,distance=..0.1,limit=1]"}]
execute unless score #message keylock matches 1 run title @s actionbar ["",{"text":"Door is locked by "},{"selector":"@e[tag=keylock_door,distance=..0.1,limit=1]"}]