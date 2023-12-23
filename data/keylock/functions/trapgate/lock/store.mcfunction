#store block type
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:5s}]}
data modify entity @s data.block.id set from entity @e[type=item,limit=1,distance=..0.4,nbt={Age:0s}] Item.id
kill @e[type=item,limit=1,distance=..0.5,nbt={Age:0s}]

#store facing
execute if predicate keylock:get_type/north run data merge entity @s {data:{block:{facing:"facing=north"}}}
execute if predicate keylock:get_type/east run data merge entity @s {data:{block:{facing:"facing=east"}}}
execute if predicate keylock:get_type/south run data merge entity @s {data:{block:{facing:"facing=south"}}}
execute if predicate keylock:get_type/west run data merge entity @s {data:{block:{facing:"facing=west"}}}

#store open
execute if predicate keylock:get_type/closed run data merge entity @s {data:{block:{open:",open=false"}}}
execute if predicate keylock:get_type/open run data merge entity @s {data:{block:{open:",open=true"}}}

#store half
execute if predicate keylock:get_type/bottom run data merge entity @s {data:{block:{half:",half=bottom"}}}
execute if predicate keylock:get_type/top run data merge entity @s {data:{block:{half:",half=top"}}}