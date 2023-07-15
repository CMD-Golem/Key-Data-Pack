# tag @s add keylock_autodoor
execute if score #toggle_auto keylock matches 1.. run tag @s add keylock_autodoor
execute if score #toggle_auto keylock matches 2 run tag @s add keylock_autodouble

execute if predicate keylock:get_type/open run data merge entity @s {data:{open:"false"}}
execute if predicate keylock:get_type/closed run data merge entity @s {data:{open:"true"}}

# execute if score #toggle_auto keylock matches 3 run data merge entity @s {data:{open:"false"}}

function keylock:door/lock/store
execute unless block ~ ~ ~ #keylock:air run function keylock:door/replace_broken

# execute unless score #toggle_auto keylock matches 1..2 run kill @e[tag=keylock_autodoor,distance=..0.1]
execute unless score #toggle_auto keylock matches 1.. run kill @s
