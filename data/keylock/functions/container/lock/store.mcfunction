tag @s remove keylock_autounlocked

#store content and name
data modify entity @s data.block.id set from block ~ ~ ~ id
data modify entity @s data.Items set from block ~ ~ ~ Items
data modify entity @s data.CustomName set from block ~ ~ ~ CustomName
data merge block ~ ~ ~ {Items:[],Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}

say stored items

# get type
execute if predicate keylock:get_type/north run data merge entity @s {data:{block:{facing:north}}}
execute if predicate keylock:get_type/east run data merge entity @s {data:{block:{facing:east}}}
execute if predicate keylock:get_type/south run data merge entity @s {data:{block:{facing:south}}}
execute if predicate keylock:get_type/west run data merge entity @s {data:{block:{facing:west}}}
execute if predicate keylock:get_type/up run data merge entity @s {data:{block:{facing:up}}}
execute if predicate keylock:get_type/down run data merge entity @s {data:{block:{facing:down}}}

execute if predicate keylock:get_type/type_single run data merge entity @s {data:{block:{type:single}}}
execute if predicate keylock:get_type/type_right run data merge entity @s {data:{block:{type:right}}}
execute if predicate keylock:get_type/type_left run data merge entity @s {data:{block:{type:left}}}

execute if predicate keylock:get_type/north run scoreboard players set @s keylock_craft 180
execute if predicate keylock:get_type/east run scoreboard players set @s keylock_craft 270
execute if predicate keylock:get_type/south run scoreboard players set @s keylock_craft 0
execute if predicate keylock:get_type/west run scoreboard players set @s keylock_craft 90

execute if predicate keylock:get_type/type_single run scoreboard players set @s keylock_use 1
execute if predicate keylock:get_type/type_right run scoreboard players set @s keylock_use 2
execute if predicate keylock:get_type/type_left run scoreboard players set @s keylock_use 3