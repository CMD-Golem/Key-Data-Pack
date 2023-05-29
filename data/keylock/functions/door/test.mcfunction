# summon falling_block ~ ~ ~ {Time:1,Tags:["keylock_falling"],BlockState:{Properties:{half:lower}}}
summon falling_block ~ ~ ~ {Time:1,Tags:["keylock_falling"],BlockState:{Properties:{half:upper}}}
# execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Name set from entity @e[tag=keylock_cloud,limit=1,sort=nearest] data.id
# execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Properties.facing set from entity @e[tag=keylock_cloud,limit=1,sort=nearest] data.facing
# execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Properties.type set from entity @e[tag=keylock_cloud,limit=1,sort=nearest] data.type

execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Name set value "minecraft:oak_door"
execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Properties.facing set value "east"
execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Properties.hinge set value "left"
execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Properties.open set value "false"