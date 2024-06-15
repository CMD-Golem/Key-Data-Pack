#setup
summon minecraft:marker ~ ~ ~ {Tags:["keylock_container","keylock_entity"],data:{block:{facing:"",type:""}}}
scoreboard players operation @e[tag=keylock_container,distance=..0.1] keylock = @s keylock

execute as @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/store_pos
execute as @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/store with entity @s data.Pos

execute if entity @s[type=player] run function keylock:container/lock/player
execute if entity @s[type=marker] run function keylock:container/lock/parent