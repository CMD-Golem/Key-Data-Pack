# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:trapgate run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy

#replace block underneath
execute if block ~ -64 ~ #keylock:air run tag @s add keylock_air
execute unless block ~ -64 ~ #keylock:air run tag @s add keylock_bedrock
clone ~ ~-1 ~ ~ ~-1 ~ ~ -64 ~
setblock ~ ~-1 ~ minecraft:barrier

# dont think that container underneath is broken
execute positioned ~ ~-1 ~ as @e[tag=keylock_entity,distance=..0.1] run tag @s add keylock_replacedby_support
# replace support after falling block
tag @s add keylock_replace_support

#restore block
summon falling_block ~ ~ ~ {Tags:["keylock_falling"],DropItem:0b,BlockState:{Name:"minecraft:structure_void"}}

data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] BlockState.Name set from entity @s data.id
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] BlockState.Properties.facing set from entity @s data.facing
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] BlockState.Properties.half set from entity @s data.half
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] BlockState.Properties.open set from entity @s data.open

# kill dropped door when door broken
kill @e[type=item,limit=1,distance=..0.5,nbt={Age:0s}]