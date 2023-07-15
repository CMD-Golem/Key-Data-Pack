#store block type
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:5s}]}
data modify entity @s data.id set from entity @e[type=item,limit=1,distance=..0.4,nbt={Age:0s}] Item.id
kill @e[type=item,limit=1,distance=..0.5,nbt={Age:0s}]

#store facing
data merge entity @s {data:{facing:north}}
execute if predicate keylock:get_type/east run data merge entity @s {data:{facing:east}}
execute if predicate keylock:get_type/south run data merge entity @s {data:{facing:south}}
execute if predicate keylock:get_type/west run data merge entity @s {data:{facing:west}}

#store hinge
execute if predicate keylock:get_type/hinge_right run data merge entity @s {data:{hinge:right}}
execute if predicate keylock:get_type/hinge_left run data merge entity @s {data:{hinge:left}}