#setup
summon minecraft:marker ~ ~ ~ {Tags:["keylock_container","keylock_entity"]}
scoreboard players operation @e[tag=keylock_container,distance=..0.1] keylock = @s keylock
execute as @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/store

execute if entity @s[type=player] run function keylock:container/lock/player
execute if entity @s[type=marker] run function keylock:container/lock/parent