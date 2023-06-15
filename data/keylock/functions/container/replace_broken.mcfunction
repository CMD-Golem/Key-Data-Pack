#replace block underneath
execute if block ~ ~-64 ~ #keylock:air run tag @s add keylock_air
clone ~ ~-1 ~ ~ ~-1 ~ ~ ~-64 ~
setblock ~ ~-1 ~ minecraft:barrier

# dont think that container underneath is broken
execute positioned ~ ~-1 ~ as @e[tag=keylock_container,distance=..0.1] run tag @s add keylock_replacedby_support
# replace support after falling block
tag @s add keylock_replace_support

#restore block
summon falling_block ~ ~ ~ {Tags:["keylock_falling"],TileEntityData:{CustomName:'{"color":"#FEFFFE","text":"Container"}',Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}}
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] BlockState.Name set from entity @s data.id
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] BlockState.Properties.facing set from entity @s data.facing
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] BlockState.Properties.type set from entity @s data.type

# kill droped chest when chest broken
kill @e[type=item,limit=1,distance=..2,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}]
