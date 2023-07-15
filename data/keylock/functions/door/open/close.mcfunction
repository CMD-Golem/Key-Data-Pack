execute as @e[tag=keylock_door,distance=..0.1] run function keylock:door/replace_broken
execute as @e[tag=keylock_door,distance=0.1..2] at @s run function keylock:door/replace_broken

# not your door
execute if score #message keylock matches 1 run tellraw @s ["",{"text":"Door is locked by "},{"selector":"@e[tag=keylock_door,distance=..0.1,limit=1]"}]
execute unless score #message keylock matches 1 run title @s actionbar ["",{"text":"Door is locked by "},{"selector":"@e[tag=keylock_door,distance=..0.1,limit=1]"}]
