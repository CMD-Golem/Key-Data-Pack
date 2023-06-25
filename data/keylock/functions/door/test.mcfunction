# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:doors run setblock ~ ~ ~ air
execute if block ~ ~1 ~ #keylock:doors run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy
execute unless block ~ ~1 ~ #keylock:air run setblock ~ ~ ~ air destroy


#restore blocks
summon falling_block ~ ~ ~ {Tags:["keylock_falling"],DropItem:0b,BlockState:{Properties:{half:lower}}}
summon falling_block ~ ~1 ~ {Tags:["keylock_falling"],DropItem:0b,BlockState:{Name:"minecraft:dark_oak_door",Properties:{half:upper}}}

execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Name set value "minecraft:oak_door"
execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Properties.facing set value "east"
execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Properties.hinge set value "left"
execute as @e[tag=keylock_falling] run data modify entity @s BlockState.Properties.open set value "false"
