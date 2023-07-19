#double container
# execute if entity @s[tag=keylock_right] if score @s keylock_craft matches 180 positioned ~-1 ~ ~ as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
# execute if entity @s[tag=keylock_right] if score @s keylock_craft matches 270 positioned ~ ~ ~-1 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
# execute if entity @s[tag=keylock_right] if score @s keylock_craft matches 0 positioned ~1 ~ ~ as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
# execute if entity @s[tag=keylock_right] if score @s keylock_craft matches 90 positioned ~ ~ ~1 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare

# execute if entity @s[tag=keylock_left] if score @s keylock_craft matches 180 positioned ~1 ~ ~ as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
# execute if entity @s[tag=keylock_left] if score @s keylock_craft matches 270 positioned ~ ~ ~1 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
# execute if entity @s[tag=keylock_left] if score @s keylock_craft matches 0 positioned ~-1 ~ ~ as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
# execute if entity @s[tag=keylock_left] if score @s keylock_craft matches 90 positioned ~ ~ ~-1 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare


execute if score @s keylock_use matches 2 if score @s keylock_craft matches 180 positioned ~-1 ~ ~ as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
execute if score @s keylock_use matches 2 if score @s keylock_craft matches 270 positioned ~ ~ ~-1 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
execute if score @s keylock_use matches 2 if score @s keylock_craft matches 0 positioned ~1 ~ ~ as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
execute if score @s keylock_use matches 2 if score @s keylock_craft matches 90 positioned ~ ~ ~1 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare

execute if score @s keylock_use matches 3 if score @s keylock_craft matches 180 positioned ~1 ~ ~ as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
execute if score @s keylock_use matches 3 if score @s keylock_craft matches 270 positioned ~ ~ ~1 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
execute if score @s keylock_use matches 3 if score @s keylock_craft matches 0 positioned ~-1 ~ ~ as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare
execute if score @s keylock_use matches 3 if score @s keylock_craft matches 90 positioned ~ ~ ~-1 as @e[tag=keylock_container,distance=..0.1] run function keylock:container/unlock/prepare


function keylock:container/unlock/prepare