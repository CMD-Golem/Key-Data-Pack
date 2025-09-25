tag @s remove keylock_autounlocked

#upload items in storage
$execute store success score #already_in_index keylock run data get storage keylock:item_safe storage[{x:$(x)d,y:$(y)d,z:$(z)d}]

data modify storage keylock:item_safe temp.x set from entity @s Pos[0]
data modify storage keylock:item_safe temp.y set from entity @s Pos[1]
data modify storage keylock:item_safe temp.z set from entity @s Pos[2]

data modify storage keylock:item_safe temp.Items set from block ~ ~ ~ Items
execute if data storage keylock:item_safe temp.Items[0] run data modify storage keylock:item_safe temp.secItems set from storage keylock:item_safe temp.Items

execute if score #already_in_index keylock matches 0 run data modify storage keylock:item_safe storage append from storage keylock:item_safe temp
$execute if score #already_in_index keylock matches 1 run data modify storage keylock:item_safe storage[{x:$(x)d,y:$(y)d,z:$(z)d}] merge from storage keylock:item_safe temp
$execute if score #already_in_index keylock matches 1 run data remove storage keylock:item_safe storage[{x:$(x)d,y:$(y)d,z:$(z)d}].repair

data remove storage keylock:item_safe temp

#store id, name, set password and clear items
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:5s}]}
data modify entity @s data.block.id set from entity @e[type=item,limit=1,distance=..0.4,nbt={Age:0s}] Item.id
kill @e[type=item,limit=1,distance=..0.5,nbt={Age:0s}]
# data modify entity @s data.block.id set from block ~ ~ ~ id
data modify entity @s data.CustomName set from block ~ ~ ~ CustomName
data merge block ~ ~ ~ {Items:[],Lock:"fsjionevnbmeuwrbt0er9bvnwrenvu"}

# get type
execute if predicate keylock:get_type/north run data merge entity @s {data:{block:{facing:"facing=north"},facing:"north"}}
execute if predicate keylock:get_type/east run data merge entity @s {data:{block:{facing:"facing=east"},facing:"east"}}
execute if predicate keylock:get_type/south run data merge entity @s {data:{block:{facing:"facing=south"},facing:"south"}}
execute if predicate keylock:get_type/west run data merge entity @s {data:{block:{facing:"facing=west"},facing:"west"}}
execute if predicate keylock:get_type/up run data merge entity @s {data:{block:{facing:"facing=up"},facing:"up"}}
execute if predicate keylock:get_type/down run data merge entity @s {data:{block:{facing:"facing=down"},facing:"down"}}

execute if predicate keylock:get_type/type_single run data merge entity @s {data:{block:{type:",type=single"}}}
execute if predicate keylock:get_type/type_right run data merge entity @s {data:{block:{type:",type=right"}}}
execute if predicate keylock:get_type/type_left run data merge entity @s {data:{block:{type:",type=left"}}}

execute if predicate keylock:get_type/north run scoreboard players set @s keylock_craft 180
execute if predicate keylock:get_type/east run scoreboard players set @s keylock_craft 270
execute if predicate keylock:get_type/south run scoreboard players set @s keylock_craft 0
execute if predicate keylock:get_type/west run scoreboard players set @s keylock_craft 90

execute if predicate keylock:get_type/type_single run scoreboard players set @s keylock_use 1
execute if predicate keylock:get_type/type_right run scoreboard players set @s keylock_use 2
execute if predicate keylock:get_type/type_left run scoreboard players set @s keylock_use 3

# prevent item loss with shulker boxes (fill all slots with barrier)
execute if block ~ ~ ~ #keylock:keep_inventory run data modify entity @s data.keep_inventory set value true
execute if block ~ ~ ~ #keylock:keep_inventory run loot insert ~ ~ ~ loot keylock:keep_inventory