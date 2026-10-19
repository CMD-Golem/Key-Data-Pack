# as keylock_door at @s
#store block type
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":5}]
data modify entity @s data.block.id set from entity @e[type=item,limit=1,distance=..0.4,nbt={Age:0s}] Item.id
kill @e[type=item,limit=1,distance=..0.5,nbt={Age:0s}]

#store facing
execute if predicate keylock:get_type/north run data merge entity @s {data:{block:{facing:"facing=north"}}}
execute if predicate keylock:get_type/east run data merge entity @s {data:{block:{facing:"facing=east"}}}
execute if predicate keylock:get_type/south run data merge entity @s {data:{block:{facing:"facing=south"}}}
execute if predicate keylock:get_type/west run data merge entity @s {data:{block:{facing:"facing=west"}}}

#store hinge
execute if predicate keylock:get_type/hinge_right run data merge entity @s {data:{block:{hinge:",hinge=right"}}}
execute if predicate keylock:get_type/hinge_left run data merge entity @s {data:{block:{hinge:",hinge=left"}}}