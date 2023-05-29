clone ~ ~-64 ~ ~ ~-64 ~ ~ ~-1 ~

execute if entity @s[tag=keylock_air] run setblock ~ ~-64 ~ minecraft:air
execute if entity @s[tag=!keylock_air] run setblock ~ ~-64 ~ minecraft:bedrock

execute positioned ~ ~-1 ~ as @e[tag=keylock_cloud,distance=..0.1] run tag @s remove keylock_support_replaced
tag @s remove keylock_support
tag @s remove keylock_air