playsound minecraft:block.chest.locked block @s ~ ~ ~ 10 1

execute if score #message keylock matches 1 run tellraw @s ["",{"text":"Container is locked by "},{"selector":"@e[tag=keylock_cloud,distance=..0.1,limit=1]"}]
execute unless score #message keylock matches 1 run title @s actionbar ["",{"text":"Container is locked by "},{"selector":"@e[tag=keylock_cloud,distance=..0.1,limit=1]"}]

