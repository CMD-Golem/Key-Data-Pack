scoreboard players set #execute_code keylock 40

#double container
execute if entity @s[tag=keylock_right] if score @s keylock_craft matches 180 positioned ~-1 ~ ~ as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/replace
execute if entity @s[tag=keylock_right] if score @s keylock_craft matches 270 positioned ~ ~ ~-1 as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/replace
execute if entity @s[tag=keylock_right] if score @s keylock_craft matches 0 positioned ~1 ~ ~ as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/replace
execute if entity @s[tag=keylock_right] if score @s keylock_craft matches 90 positioned ~ ~ ~1 as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/replace

execute if entity @s[tag=keylock_left] if score @s keylock_craft matches 180 positioned ~1 ~ ~ as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/replace
execute if entity @s[tag=keylock_left] if score @s keylock_craft matches 270 positioned ~ ~ ~1 as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/replace
execute if entity @s[tag=keylock_left] if score @s keylock_craft matches 0 positioned ~-1 ~ ~ as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/replace
execute if entity @s[tag=keylock_left] if score @s keylock_craft matches 90 positioned ~ ~ ~-1 as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/replace

function keylock:container/replace