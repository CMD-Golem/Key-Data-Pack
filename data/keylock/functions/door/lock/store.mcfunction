data merge entity @s {data:{facing:north}}
execute if predicate keylock:get_type/east run data merge entity @s {data:{facing:east}}
execute if predicate keylock:get_type/south run data merge entity @s {data:{facing:south}}
execute if predicate keylock:get_type/west run data merge entity @s {data:{facing:west}}
execute if predicate keylock:get_type/up run data merge entity @s {data:{facing:up}}
execute if predicate keylock:get_type/down run data merge entity @s {data:{facing:down}}

data merge entity @s {data:{type:single}}
execute if predicate keylock:get_type/door_right run data merge entity @s {data:{type:right}}
execute if predicate keylock:get_type/door_left run data merge entity @s {data:{type:left}}

execute if predicate keylock:get_type/north run scoreboard players set @s keylock_craft 180
execute if predicate keylock:get_type/east run scoreboard players set @s keylock_craft 270
execute if predicate keylock:get_type/south run scoreboard players set @s keylock_craft 0
execute if predicate keylock:get_type/west run scoreboard players set @s keylock_craft 90

execute if predicate keylock:get_type/single run tag @s add keylock_single
execute if predicate keylock:get_type/door_right run tag @s add keylock_right
execute if predicate keylock:get_type/door_left run tag @s add keylock_left