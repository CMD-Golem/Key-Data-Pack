# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:doors run setblock ~ ~ ~ air
execute if block ~ ~1 ~ #keylock:doors run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy
execute unless block ~ ~1 ~ #keylock:air run setblock ~ ~ ~ air destroy

#restore blocks
summon falling_block ~ ~ ~ {Tags:["keylock_falling_lower"],DropItem:0b,BlockState:{Name:"minecraft:structure_void",Properties:{half:lower}}}
summon falling_block ~ ~1 ~ {Tags:["keylock_falling_upper"],DropItem:0b,BlockState:{Name:"minecraft:oak_door",Properties:{half:upper}}}

data modify entity @e[tag=keylock_falling_lower,distance=..0.1,limit=1] BlockState.Name set from entity @s data.id
data modify entity @e[tag=keylock_falling_lower,distance=..0.1,limit=1] BlockState.Properties.facing set from entity @s data.facing
data modify entity @e[tag=keylock_falling_lower,distance=..0.1,limit=1] BlockState.Properties.hinge set from entity @s data.hinge
data modify entity @e[tag=keylock_falling_lower,distance=..0.1,limit=1] BlockState.Properties.open set from entity @s data.open

execute positioned ~ ~1 ~ run data modify entity @e[tag=keylock_falling_upper,distance=..0.1,limit=1] BlockState.Name set from entity @s data.id
execute positioned ~ ~1 ~ run data modify entity @e[tag=keylock_falling_upper,distance=..0.1,limit=1] BlockState.Properties.facing set from entity @s data.facing
execute positioned ~ ~1 ~ run data modify entity @e[tag=keylock_falling_upper,distance=..0.1,limit=1] BlockState.Properties.hinge set from entity @s data.hinge
execute positioned ~ ~1 ~ run data modify entity @e[tag=keylock_falling_upper,distance=..0.1,limit=1] BlockState.Properties.open set from entity @s data.open

# kill dropped door when door broken
kill @e[type=item,limit=1,distance=..0.5,nbt={Age:0s}]
scoreboard players set #door_found keylock 1