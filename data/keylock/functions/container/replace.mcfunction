#replace block underneath
execute if block ~ ~-64 ~ #keylock:air run tag @s add keylock_air
clone ~ ~-1 ~ ~ ~-1 ~ ~ ~-64 ~
setblock ~ ~-1 ~ minecraft:barrier
execute positioned ~ ~-1 ~ as @e[tag=keylock_cloud,distance=..0.1] run tag @s add keylock_support_replaced
execute if score #execute_code keylock matches 40 run tag @s add keylock_unlock_display
execute if score #execute_code keylock matches 40 positioned ~ ~0.25 ~ run kill @e[tag=keylock_display,distance=..0.1]

tag @s add keylock_support

#restore block
summon falling_block ~ ~ ~ {Tags:["keylock_falling"],TileEntityData:{CustomName:'{"color":"#FEFFFE","text":"Container"}',Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}}
data modify entity @e[tag=keylock_falling,sort=nearest,limit=1] BlockState.Name set from entity @s data.id
data modify entity @e[tag=keylock_falling,sort=nearest,limit=1] BlockState.Properties.facing set from entity @s data.facing
data modify entity @e[tag=keylock_falling,sort=nearest,limit=1] BlockState.Properties.type set from entity @s data.type

kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}]