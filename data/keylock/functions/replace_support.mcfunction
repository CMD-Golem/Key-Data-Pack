clone ~ -64 ~ ~ -64 ~ ~ ~-1 ~

execute positioned ~ ~-1 ~ as @e[tag=keylock_entity,distance=..0.1] run tag @s remove keylock_replacedby_support
tag @s remove keylock_replace_support
tag @s add keylock_clear_support