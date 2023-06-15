clone ~ ~-64 ~ ~ ~-64 ~ ~ ~-1 ~

execute if entity @s[tag=keylock_air] run setblock ~ ~-64 ~ minecraft:air
execute if entity @s[tag=!keylock_air] run setblock ~ ~-64 ~ minecraft:bedrock

execute positioned ~ ~-1 ~ as @e[tag=keylock_container,distance=..0.1] run tag @s remove keylock_replacedby_support
tag @s remove keylock_replace_support
tag @s remove keylock_air

execute if score #container_type keylock matches 1..2 if entity @s[tag=keylock_must_kill] run kill @s