execute if score #toggle_auto keylock matches 1.. run tag @s add keylock_autodoor
execute if score #toggle_auto keylock matches 2 run tag @s add keylock_autodouble

execute if predicate keylock:get_type/open run data merge entity @s {data:{open:"false"}}
execute unless predicate keylock:get_type/open run data merge entity @s {data:{open:"true"}}

# execute if score #toggle_auto keylock matches 1 if predicate keylock:get_type/open run data merge entity @s {data:{open:"true"}}
# execute if score #toggle_auto keylock matches 1 unless predicate keylock:get_type/open run data merge entity @s {data:{open:"false"}}

function keylock:door/lock/store
execute unless block ~ ~ ~ #keylock:air run function keylock:door/replace_broken

execute unless score #toggle_auto keylock matches 1.. run kill @s